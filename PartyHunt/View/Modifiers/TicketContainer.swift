//
//  TicketContainer.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 03/11/23.
//

import SwiftUI

struct TopTicketContainer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 20)
            .background(.black.opacity(0.5))
            .clipShape(
                TicketShape()
                    .rotation(Angle(degrees: 0))
            )
            .border(Color.customBlack.opacity(0.7), width: 12)
            .cornerRadius(10)
            .padding(.horizontal)
    }
}

struct MiddleTicketContainer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: UIScreen.main.bounds.size.height * 0.40)
            .padding(.horizontal, 40)
            .border(Color.customBlack.opacity(0.7), width: 12)
            .background(.black.opacity(0.5))
            .clipShape(
                TicketShape()
                    .rotation(Angle(degrees: 180))
            )
            .clipShape(
                TicketShape()
                    .rotation(Angle(degrees: 0))
            )
            .cornerRadius(10)
            .padding(.horizontal)
    }
}

struct BottomTicketContainer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: UIScreen.main.bounds.size.height * 0.15)
            .padding(.horizontal, 20)
            .background(.black.opacity(0.5))
            .clipShape(
                TicketShape()
                    .rotation(Angle(degrees: 180))
            )
            .cornerRadius(10)
            .padding(.horizontal)
    }
}
