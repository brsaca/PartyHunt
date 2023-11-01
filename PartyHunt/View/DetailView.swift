//
//  DetailView.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import SwiftUI
import Kingfisher

struct DetailView: View {
    //MARK: View Properties
    let event: Event
    
    var body: some View {
        VStack {
            ZStack(alignment:.top) {
                //background
                Image(.backDetail)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.size.width)
                    .clipped()
                
                // NavBar
                CustomNavBar(screenBar: .concert)
                
                // image
                KFImage(event.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: UIScreen.main.bounds.size.height * 0.7)
                    .offset(y: 50)
                
                //Bottom
            }
            
            // Bottom
            Spacer()
            
        }
        .backgroundStyle()
    }
}

// MARK: - Previews
#Preview {
    DetailView(event: Events.mock.event[0])
}
