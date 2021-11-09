//
//  Constants.swift
//  GhibliLog
//
//  Created by Daniel Whitehorn
//

import Foundation
import SwiftUI

public struct Constants {
    let navBarText = "GhibliLog"
    let galleryText = "Gallery"
    let learnText = "Learn More"
}

// MARK: - PREVIEW

struct Constants_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro")
    }
}
