//
//  NextButton.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import SwiftUI

struct NextButton: View {
    // MARK: View Properties
    let event: Event
    
    var body: some View {
        NavigationLink(destination: {
            TicketView(event: event)
                .navigationBarBackButtonHidden(true)
        }, label: {
            Image(systemName: "chevron.right")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .background(
                    Circle()
                        .foregroundStyle(.white)
                        .frame(width: 50, height: 50)
                )
        })
    }
}

// MARK: - Previews
#Preview {
    NextButton(event: Event.mock)
}
