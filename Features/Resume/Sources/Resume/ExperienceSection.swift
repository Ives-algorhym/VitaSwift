//
//  ExperienceSection.swift
//  Resume
//
//  Created by Ives Murillo on 6/20/25.
//

import SwiftUI

@available(iOS 13.0, *)
struct ExperienceSection: View {
    let experiences: [Experience]
    var body: some View {
        SectionView(title: "Experience") {
            ForEach(experiences) { experience in
                VStack(alignment: .leading, spacing: 4) {
                    Text(experience.role).font(.callout).bold()
                    Text(experience.company).font(.caption).bold()
                    Text(experience.duration).font(.caption).italic()
                    VStack(alignment: .leading, spacing: 2) {
                        ForEach(experience.details, id: \.self) { detail in
                            Text("• \(detail)").font(.caption)
                        }
                    }
                }
            }
        }
    }
}

@available(iOS 13.0, *)
struct ExperienceSection_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceSection(experiences: [
            Experience(
                role: "iOS Software Engineer",
                company: "Walmart",
                duration: "Jan 2022 – May 2025",
                details: [
                    "Led development of new B2B marketplace app features.",
                    "Implemented MVVM architecture with Coordinators and Combine.",
                    "Shipped crash-free releases in a fast-paced agile environment."
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
        ])
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
