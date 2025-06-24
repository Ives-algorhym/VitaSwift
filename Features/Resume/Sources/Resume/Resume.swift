// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 13.0, *)
struct ResumeView: View {
    @ObservedObject var viewModel: ResumeViewModel
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                HeaderView(
                    name: viewModel.name,
                    title: "Software Engineer",
                    location: "San Francisco, CA"
                )

                ExperienceSection(experiences: viewModel.experience)
                SkillsSectionView(skills: $viewModel.skills)
            }

        }
    }
}

@available(iOS 13.0, *)
struct WrapStack<Data: RandomAccessCollection, Content: View>: View where Data.Element: Hashable {
    let tags: Data
    let content: (Data.Element) -> Content

    var body: some View {
        if #available(iOS 14.0, *) {
            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 80), spacing: 8)],
                spacing: 8
            ) {
                ForEach(tags, id: \.self) { tag in
                    content(tag)
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

@available(iOS 13.0, *)
struct SkillsSectionView: View {
    let skills: [String]

    var body: some View {
        SectionView(title: "Skills") {
            WrapStack(tags: skills) { skill in
                Text(skill)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(12)
                    .font(.subheadline)
            }
        }
    }
}

@available(iOS 13.0, *)
struct ResumeView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ResumeViewModel(
            name: "Ives Murillo",
            title: "Vitae",
            location: "San Francisco",
            experience: [
                Experience(
                    role: "iOS Engineer II",
                    company: "Walmart Global Tech",
                    duration: "Jan 2022 – Apr 2025",
                    details: [
                        "Led development of B2B app core shell architecture",
                        "Implemented modular feature packages with SwiftPM",
                        "Collaborated with cross-functional teams to ship MVP"
                    ]
                ),
                Experience(
                    role: "Mobile Developer Intern",
                    company: "Startup Inc.",
                    duration: "Jun 2021 – Dec 2021",
                    details: [
                        "Built onboarding screens using SwiftUI.",
                        "Integrated RESTful APIs and handled JSON parsing."
                    ]
                )
            ]
        )

        NavigationView {
            ResumeView(viewModel: viewModel)
        }
    }
}
