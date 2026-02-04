import SwiftUI

struct ContentView: View {
    @StateObject var motion = MotionManager()

    var body: some View {
        VStack(spacing: 30) {
            Text("FitTrack AI")
                .font(.system(size: 34, weight: .bold, design: .rounded))
            
            ZStack {
                Circle()
                    .stroke(lineWidth: 20)
                    .opacity(0.3)
                    .foregroundColor(.blue)
                
                VStack {
                    Text(motion.activityType)
                        .font(.title)
                        .bold()
                    Text("\(Int(motion.confidence * 100))% Confidence")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .frame(width: 250, height: 250)
            
            VStack(alignment: .leading, spacing: 10) {
                Label("Real-time Tracking Active", systemImage: "waveform.path.ecg")
                    .foregroundColor(.green)
                Label("CoreML Model: ActivityClassifier v1", systemImage: "cpu")
            }
            .padding()
            .background(Color.secondary.opacity(0.1))
            .cornerRadius(15)
        }
        .padding()
    }
Button("Simulate Running") {
    motion.simulateMovement(testMagnitude: 2.0)
}
.padding()
.background(Color.blue)
.foregroundColor(.white)
.cornerRadius(10)
}