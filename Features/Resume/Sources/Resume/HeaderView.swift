//
//  HeaderView.swift
//  Resume
//
//  Created by Ives Murillo on 6/20/25.
//

import SwiftUI

@available(iOS 13.0, *)
struct HeaderView: View {
    let name: String
    let title: String
    let location: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(name).font(.largeTitle).bold()
            Text(title).font(.headline)
            Text(location)
        }
    }
}

@available(iOS 13.0, *)
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(
            name: "Ives Murillo",
            title: "iOS Software Engineer",
            location: "Sunnyvale, CA"
        )
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
