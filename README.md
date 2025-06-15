# 📄 VitaSwift App

## Overview

SwiftlyResume is a SwiftUI-based iOS app designed to showcase a personal resume as the main feature, with integrated support for AI-driven feedback and enhancements. This project highlights my expertise as a professional iOS Software Engineer, demonstrating practical applications of:

	•	Test-Driven Development (TDD)
	•	Prompt engineering and AI integration
	•	CI/CD practices
	•	SOLID principles
	•	Modern design patterns
	•	SwiftUI and cutting-edge iOS technologies

SwiftlyResume serves both as a professional portfolio and a technical playground for building thoughtful, scalable, and user-centric iOS applications.

---

## 🎯 Features

### ✅ Home (Main Feature)
- Displays your professional resume
- Sections: Header, Experience, Education, Skills
- Supports offline viewing
- Future: AI-powered resume feedback

### 🚀 Onboarding
- Guides first-time users through basic setup (in development)

### 🧠 AI Prompt Playground
- Enter custom inputs and receive answers from an AI API (OpenAI, Anthropic, or Apple Intelligence)
- Future support for prompt templates and history

---

## 🏗 Architecture

- **Pattern:** MVVM + Coordinator
- **SwiftUI
- **Async:** Async/Await for business logic
- **UI Updates:** Combine (where necessary)
- **Modularity:** Structured using SwiftPM-ready folders

Sources/
├── App                  # App swiftUI
├── Core                 # Shared utilities (errors, extensions)
├── Networking           # API clients and services
├── UIComponents         # Reusable UI views
└── Features/
├── Home/            # Resume viewer feature
├── Onboarding/      # First-launch flow
└── AIPromptPlayground/ # AI interaction playground


---

## 🧪 Testing

- Uses [`swift-testing`](https://github.com/apple/swift-testing) for BDD-style unit tests
- Write tests using `@Test` and `#expect`

---

## 🔧 Setup

1. Clone the repository
2. Open the `.xcodeproj` or `.xcworkspace`
3. Build and run the app (iOS 16+)
4. Inject your resume content into `ResumeModel` or integrate from a local JSON

---

## 💬 Example Use Case

> “I open the app during an interview to show my resume. I ask the AI for feedback on how to improve my summary section.”

---

## 📌 Future Roadmap

- [ ] Editable resume fields
- [ ] AI resume enhancement via prompt templates
- [ ] Export/share PDF
- [ ] Prompt Marketplace
- [ ] User account sync

---

## 🧠 Inspiration

This app is a blend of:
- **Personal branding**
- **AI interaction**
- **Mobile design best practices**

---

## 🤝 Contributions

Feel free to fork and submit a pull request — especially if you’re passionate about AI, resumes, or clean architecture in SwiftUI.

---
