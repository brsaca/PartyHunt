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
                navBar
                
                // image
                KFImage(event.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: UIScreen.main.bounds.size.height * 0.7)
                    .offset(y: 50)
            }
            
            
            // Bottom
            Spacer()
            
        }
        .backgroundStyle()
    }
}

extension DetailView {
    var navBar: some View {
        HStack {
            Image(systemName: "chevron.left")
                .fontWeight(.semibold)
                .onTapGesture {
                    
                }
            
            Spacer()
            
            Text("CONCERTS")
                .font(.outfit(.bold, size: 16))
                .kerning(4.48)
            
            Spacer()
        }
        .foregroundStyle(.white)
        .navBarStyle()
    }
}

// MARK: - Previews
#Preview {
    DetailView(event: Events.mock.event[0])
}
