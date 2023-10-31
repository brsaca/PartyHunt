//
//  ListView.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 30/10/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // NavBar
            navBar
            
            // Title
            title
            
            // Events nearBy
            
            // Recommended places
            Spacer()
        }
        .modifier(Background())
    }
    
}

extension ListView {
    var navBar: some View {
        HStack {
            RoundButton(image: "options")
            Spacer()
            HStack {
                RoundButton(image: "search")
                UserAvatar(avatar: "woman")
                    .offset(x: -1)
            }
        }
        .padding(.horizontal, 24)
        .frame(width: .infinity, height: 60)
        .background(.black.opacity(0.12))
        .padding(.top, 60)
    }
    
    var title: some View {
        ZStack(alignment: .trailing) {
            HStack {
                Spacer()
                Image(.backCountry)
                    .resizable()
                    .scaledToFill()
                    .frame(width:250, height: 184)
                    .padding(.top, 160)
            }
            
            HStack(alignment: .top) {
                Text("MAKE YOUR PARTY\nPLANS OUT OF THE")
                    .font(.outfit(.black, size: 26))
                    .padding()
                Spacer()
            }
            
            Text("WORLD")
                .font(.onebrush(118))
                .frame(width: .infinity, alignment: .trailing)
                .padding(.trailing, 20)
                .padding(.top, 160)
        }
        .frame(maxHeight: 150)
        .foregroundStyle(.white)
        
    }
}

// MARK: - Previews
#Preview {
    ListView()
}
