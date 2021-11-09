//
//  ContentView.swift
//  GhibliLog
//
//  Created by Daniel Whitehorn
//

import SwiftUI

struct ContentView: View {

    // MARK: - PROPERTIES
    let films: [FilmModel] = Bundle.main.decode("films.json")
    let constants = Constants()

    var body: some View {

        // MARK: - BODY

        NavigationView {
            List {
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                ForEach(films) {
                    film in NavigationLink(destination: FilmDetailView(filmModel: film)) {
                        FilmListItemView(filmModel: film)
                    } //: LINK
                } //: LOOP
            } //: LIST
            .listStyle(.plain)
            .navigationBarTitle(constants.navBarText)
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro")
    }
}
