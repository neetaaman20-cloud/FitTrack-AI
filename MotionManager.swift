import Foundation
import CoreMotion
import CoreML
// Add this temporary function to MotionManager.swift
func simulateMovement(testMagnitude: Double) {
    self.classifyActivity(x: testMagnitude, y: 0, z: 0)
}

class MotionManager: ObservableObject {
    #if os(iOS)
    private var motionManager = CMMotionManager()
    #endif
    
    @Published var activityType: String = "Stationary"
    @Published var confidence: Double = 0.0

    init() {
        #if os(iOS)
        startUpdates()
        #else
        print("Motion tracking is only available on iOS devices.")
        #endif
    }

    func startUpdates() {
        #if os(iOS)
        if motionManager.isAccelerometerAvailable {
            motionManager.accelerometerUpdateInterval = 0.1
            motionManager.startAccelerometerUpdates(to: .main) { (data, error) in
                guard let data = data else { return }
                self.classifyActivity(x: data.acceleration.x, y: data.acceleration.y, z: data.acceleration.z)
            }
        }
        #endif
    }

    func classifyActivity(x: Double, y: Double, z: Double) {
        let magnitude = sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2))
        
        DispatchQueue.main.async {
            if magnitude > 1.5 {
                self.activityType = "Running"
                self.confidence = 0.92
            } else if magnitude > 1.1 {
                self.activityType = "Walking"
                self.confidence = 0.85
            } else {
                self.activityType = "Standing"
                self.confidence = 0.98
            }
        }
    }
}