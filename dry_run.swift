import Foundation

func testAI(magnitude: Double) -> String {
    if magnitude > 1.5 { return "🏃 Running" }
    else if magnitude > 1.1 { return "🚶 Walking" }
    else { return "🛑 Standing" }
}

print("Testing Low Impact (0.5): \(testAI(magnitude: 0.5))")
print("Testing Medium Impact (1.2): \(testAI(magnitude: 1.2))")
print("Testing High Impact (2.5): \(testAI(magnitude: 2.5))")