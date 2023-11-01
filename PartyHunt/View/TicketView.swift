//
//  TicketView.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import SwiftUI
import Kingfisher

struct TicketView: View {
    // MARK: View Properties
    let event: Event
    
    var body: some View {
        VStack(alignment:.leading, spacing: 10) {
            // NavBar
            CustomNavBar(screenBar: .myTickets)
            
            // Image
            topSection
            
        
            // Details
            detailsSection
            
            // Code
            
            Spacer()
        }
        .backgroundStyle()
    }
}

extension TicketView {
    var topSection: some View {
        HStack(alignment:.center, spacing: 20) {
            KFImage(event.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.size.width * 0.3 )
                
            VStack(alignment:.leading, spacing: 10) {
                Text(event.artist)
                    .font(.onebrush(80))
                    .foregroundStyle(.white)
                
                Text(event.name)
                    .font(.outfit(.black, size: 12))
                    .kerning(3.84)
                    .foregroundStyle(Color.customYellow)
            }
            
            Spacer()
        }
        .frame(height: UIScreen.main.bounds.size.height * 0.25)
        .padding(.horizontal, 20)
        .padding(.top, 20)
        .border(Color.customBlack, width: 12)
        .background(.black.opacity(0.5))
        .cornerRadius(10)
        .padding(.horizontal)
    }
    
    var detailsSection: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(DetailsKeys.allCases, id:\.self) { key in
                VStack(alignment: .leading, spacing: 5) {
                    Text(key.rawValue.uppercased())
                        .font(.outfit(.semibold, size: 12))
                        .kerning(2.4)
                        .foregroundColor(.white.opacity(0.6))
                        .frame(maxWidth:.infinity, alignment:.leading)
                    
                    Text(event.details[key]!)
                        .font(.outfit(.bold, size: 14))
                        .kerning(1.4)
                        .foregroundColor(.white)
                }
            }
        }
        .frame(height: UIScreen.main.bounds.size.height * 0.40)
        .padding(.horizontal, 20)
        .border(Color.customBlack, width: 12)
        .background(.black.opacity(0.5))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

// MARK: - Previews
#Preview {
    TicketView(event: Events.mock.event[0])
}
