//
//  File.swift
//  Resume
//
//  Created by Ives Murillo on 6/15/25.
//

import SwiftUI

@available(iOS 13.0, *)
public class ResumeViewModel: ObservableObject {
    @Published public var name: String
    @Published public var title: String
    @Published public var location: String
    @Published public var experience: [Experience]
    @Published public var skills: [String]

    public init(
        name: String,
        title: String,
        location: String,
        experience: [Experience],
        skills: [String]

    ) {
        self.name = name
        self.title = title
        self.location = location
        self.experience = experience
        self.skills = skills
    }
}

public struct Experience: Identifiable {
    public let id = UUID()
    let role: String
    let company: String
    let duration: String
    let details: [String]
}


