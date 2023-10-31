//
//  Font.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import SwiftUI

extension Font {
    enum Outfit {
        case black
        case bold
        case semibold
        
        var value: String {
            switch self {
            case .black: "Outfit-Black"
            case .bold: "Outfit-Bold"
            case .semibold: "Outfit-SemiBold"
            }
        }
    }
    
    /**
     Returns a custom Outfit font with the specified type and size.

     - Parameters:
       - type: The Outfit type (e.g., .bold, .black, .semibold).
       - size: The size of the font (default is 24 points).

     - Returns: A custom `Font` with the specified Outfit type and size.
     */
    static func outfit(_ type: Outfit, size: CGFloat = 24) -> Font {
        return .custom(type.value, size: size)
    }
    
    /**
     Returns a custom Onebrush font with the specified type and size.

     - Parameters:
       - size: The size of the font

     - Returns: A custom `Font` with the specified size.
     */
    static func onebrush(_ size: CGFloat) -> Font {
        return .custom("OneBrush", size: size)
    }
}
