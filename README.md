# FitTrack AI 🏃‍♂️🚶‍♂️🛑

A **Core ML-powered** iOS application built with **Swift** and **SwiftUI** that uses real-time accelerometer data to classify physical activity.

## 🚀 Overview
FitTrack AI leverages the device's motion sensors to detect whether a user is standing, walking, or running. This project demonstrates on-device machine learning integration and real-time data processing.

## 🛠️ Tech Stack
* **Language**: Swift
* **Framework**: SwiftUI
* **Libraries**: CoreMotion, CoreML, Foundation

## 🧪 Testing & Verification
Since this is an iOS-targeted project developed on macOS, the core logic was verified using a custom dry-run test script to simulate accelerometer magnitudes:

- **Low Impact (<1.1)**: Classified as Standing
- **Medium Impact (1.1 - 1.5)**: Classified as Walking
- **High Impact (>1.5)**: Classified as Running

## 📂 Project Structure
- `MotionManager.swift`: Handles sensor data and AI classification logic.
- `ContentView.swift`: The real-time activity dashboard.
- `dry_run.swift`: Unit test for verifying classification accuracy in the terminal.

---
**Developed by [Anugrah Singh]** *First-year BCA Student | Focused on AI & iOS Development*
