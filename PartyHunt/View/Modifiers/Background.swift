//
//  Background.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import SwiftUI

struct Background: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                Image(.background)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .ignoresSafeArea(.all)
                    .frame(width: .infinity, height: .infinity)
            )
    }
}
