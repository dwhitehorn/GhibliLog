//
//  FilmDetailView.swift
//  GhibliLog
//
//  Created by Daniel Whitehorn
//

import SwiftUI

struct FilmDetailView: View {

    // MARK: - PROPERTIES

    let filmModel: FilmModel
    let constants = Constants()

    // MARK: - BODY

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 15) {
                //: HERO IMAGE
                Image(filmModel.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                //: HEADLINE
                VStack(spacing: 5) {
                    Text(filmModel.title.uppercased())
                        .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.accentColor)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundColor(.primary)

                    Text(filmModel.description)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .font(.body)
                        .foregroundColor(.accentColor)
                        .padding(.horizontal)
                }

                //: GALLERY
                VStack(spacing: 5) {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: constants.galleryText)
                    GalleryView(filmModel: filmModel)
                }
                .padding(.horizontal)

                //: EXTERNAL LINK
                VStack(spacing: 5) {
                    HeadingView(headingImage: "books.vertical", headingText: constants.learnText)
                    ExternalWebLinkView(filmModel: filmModel)
                }
                .padding(.horizontal)
            } //: VSTACK
            .navigationBarTitle(filmModel.title, displayMode: .inline)
        } //: SCROLL
    }
}

// MARK: - PREVIEW

struct FilmDetailView_Previews: PreviewProvider {
    static let films: [FilmModel] = Bundle.main.decode("films.json")

    static var previews: some View {
        FilmDetailView(filmModel: films[18])
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro")
    }
}
