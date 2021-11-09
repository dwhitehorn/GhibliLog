//
//  FilmListItemView.swift
//  GhibliLog
//
//  Created by Daniel Whitehorn
//

import SwiftUI

import SwiftUI

struct FilmListItemView: View {

    // MARK: - PROPERTIES

    let filmModel: FilmModel

    // MARK: - BODY

    var body: some View {
        HStack(alignment: .center, spacing: 16) {

            Image(filmModel.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 8) {
                Text(filmModel.title)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)

                Text(filmModel.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(4)
                    .padding(.trailing, 8)
            } //: VSTACK
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct FilmListItemView_Previews: PreviewProvider {
    static let films: [FilmModel] = Bundle.main.decode("films.json")

    static var previews: some View {
        FilmListItemView(filmModel: films[0])
    }
}
