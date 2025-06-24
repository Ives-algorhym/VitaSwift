//
//  SectionView.swift
//  Resume
//
//  Created by Ives Murillo on 6/20/25.
//

import SwiftUI

@available(iOS 13.0, *)
struct SectionView<Content: View>: View {
    let title: String
    let content: () -> Content

    init(title: String, @ViewBuilder content: @escaping () -> Content) {
        self.title = title
        self.content = content
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title).font(.system(size: 28, weight: .semibold))
            content()
        }
    }
}

@available(iOS 13.0, *)
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(title: "Experience") {
            VStack(alignment: .leading) {
                Text("iOS Developer at TechCorp")
                Text("Jan 2021 – Present")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
