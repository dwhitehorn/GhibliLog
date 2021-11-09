//
//  ExternalWebLinkView.swift
//  GhibliLog
//
//  Created by Daniel Whitehorn
//

import SwiftUI

struct ExternalWebLinkView: View {

    // MARK: - PROPERTIES

    let filmModel: FilmModel

    // MARK: - BODY

    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("IMDB")
                Spacer()

                Group {
                    Image(systemName: "arrow.up.right.square")

                    Link(filmModel.title, destination: (URL(string: filmModel.imdbLink) ?? URL(string: "https://www.imdb.com"))!)
                }
                .foregroundColor(.accentColor)
            } //: HSTACK
        } //: BOX
    }
}

// MARK: - PREIVEW

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let films: [FilmModel] = Bundle.main.decode("films.json")

    static var previews: some View {
        ExternalWebLinkView(filmModel: films[0])
    }
}
