//
//  CodableBundleExtension.swift
//  GhibliLog
//
//  Created by Daniel Whitehorn
//

import Foundation
import SwiftUI

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            return(print("Failed to locate \(file) in bundle."))
             as! T
        }

        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            return(print("Failed to load \(file) from bundle."))
             as! T
        }

        // 3. Create a decoder
        let decoder = JSONDecoder()

        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            return(print("Failed to decode \(file) from bundle."))
             as! T
        }

        // 5. Return the ready-to-use data
        return loaded
    }
}
