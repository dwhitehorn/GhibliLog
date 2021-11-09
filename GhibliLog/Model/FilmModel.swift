//
//  FilmModel.swift
//  GhibliLog
//
//  Created by Daniel Whitehorn
//

import Foundation

struct FilmModel: Codable, Identifiable {
    let id: String
    let title: String
    let description: String
    let headline: String
    let image: String
    let gallery: [String]
    let director: String
    let producer: String
    let releaseDate: String
    let rtScore: String
    let imdbLink: String
    let imdbScore: String
    let runtime: String
    let watched: Bool
}
