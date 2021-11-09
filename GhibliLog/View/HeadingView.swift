//
//  HeadingView.swift
//  GhibliLog
//
//  Created by Daniel Whitehorn
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES

    var headingImage: String
    var headingText: String

    // MARK: - BODY

    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)

            Text(headingText)
                .font(.title2)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

// MARK: - PREVIEW

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Gallery")
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
    }
}
