//
//  EventCell.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import SwiftUI

struct EventCell: View {
    // MARK: View Properties
    let event: Event
    let status: Status
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(event.location.uppercased())
                .font(.outfit(.semibold, size: 12))
                .lineLimit(1)
                .kerning(2.4)
                .foregroundColor(.white)
            
            HStack(alignment: .center) {
                Text(event.name.uppercased())
                    .font(.outfit(.black, size: 20))
                    .lineLimit(1)
                    .kerning(2)
                    .foregroundColor(.white)
                
                Spacer()
                
                if (status != .none) {
                    if (status == .next) {
                        NextButton(event: event)
                            .padding(.trailing)
                    } else {
                        StatusIcon(status: status)
                    }
                }
            }
            
            Text(event.onlyDate)
                .font(
                    Font.custom("Outfit", size: 14)
                        .weight(.heavy)
                )
                .kerning(2.8)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.customYellow)
            
            if (status == .next) {
                Spacer()
                    .frame(height: 20)
            }
            
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .background(.black.opacity(0.35))
    }
}

// MARK: - Previews
#Preview("booked") {
    EventCell(event: Event.mock, status: .booked)
}

#Preview("next") {
    EventCell(event: Event.mock, status: .next)
}
