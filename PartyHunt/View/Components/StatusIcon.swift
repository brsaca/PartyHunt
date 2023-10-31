//
//  StatusIcon.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import SwiftUI

struct StatusIcon: View {
    // MARK: View Properties
    let status: Status
    
    var body: some View {
        Image(status.rawValue)
        .frame(width: 55, height: 55, alignment: .center)
        .background(.black)
        .cornerRadius(4)
        .shadow(color: .black.opacity(0.7), radius: 7, x: 0, y: 0)
        .overlay(
          RoundedRectangle(cornerRadius: 4)
            .inset(by: 0.5)
            .stroke(Color(red: 0.41, green: 0.41, blue: 0.41), lineWidth: 1)
        )
    }
}

// MARK: - Previews
#Preview("booked") {
    StatusIcon(status: .booked)
}

#Preview("favorite") {
    StatusIcon(status: .favorite)
}
