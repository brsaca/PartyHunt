//
//  NavBar.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import SwiftUI

struct NavBar: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 24)
            .frame(width: .infinity, height: 50)
            .background(.black.opacity(0.12))
            .padding(.top)
    }
}
