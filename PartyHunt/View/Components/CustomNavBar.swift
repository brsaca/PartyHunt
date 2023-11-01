//
//  CustomNavBar.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import SwiftUI

struct CustomNavBar: View {
    // MARK: View Properties
    let screenBar: ScreenBar
    
    var body: some View {
        HStack {
            Image(systemName: "chevron.left")
                .onTapGesture {
                    
                }
            
            Spacer()
            
            Text(screenBar.title)
                .font(.outfit(.bold, size: 16))
                .kerning(4.48)
            
            Spacer()
            
            if let icon = screenBar.rigthImage {
                icon
                    .onTapGesture {
                        
                    }
            }
        }
        .fontWeight(.semibold)
        .foregroundStyle(.white)
        .navBarStyle()
    }
}

// MARK: - Previews
#Preview("Concerts") {
    CustomNavBar(screenBar: .concert)
        .backgroundStyle()
}

#Preview("My Ticket") {
    CustomNavBar(screenBar: .myTickets)
        .backgroundStyle()
}
