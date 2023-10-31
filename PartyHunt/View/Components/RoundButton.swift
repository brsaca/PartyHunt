//
//  RoundButton.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import SwiftUI

struct RoundButton: View {
    // MARK: View Properties
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: 15, height: 15)
            .scaledToFit()
            .background(
                Circle()
                    .foregroundStyle(Color(red: 0.09, green: 0.09, blue: 0.09).opacity(0.5))
                    .frame(width: 44, height: 44)
            )
    }
}

// MARK: - Previews
#Preview("Options") {
    RoundButton(image: "options")
}

#Preview("Search") {
    RoundButton(image: "search")
}
