//
//  GalleryView.swift
//  GhibliLog
//
//  Created by Daniel Whitehorn
//

import SwiftUI

struct GalleryView: View {
    // MARK: - PROPERTIES

    let filmModel: FilmModel

    // MARK: - BODY

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(filmModel.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 175)
                        .cornerRadius(15)
                } //: LOOP
            } //: HSTACK
        } //: SCROLL
    }
}

// MARK: - PREVIEW

struct GalleryView_Previews: PreviewProvider {
    static let films: [FilmModel] = Bundle.main.decode("films.json")

    static var previews: some View {
        GalleryView(filmModel: films[12])
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro")
            .padding()

    }
}
