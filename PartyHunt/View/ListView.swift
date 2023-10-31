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
}

// MARK: - Previews
#Preview {
    ListView()
}
