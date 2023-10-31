//
//  UserAvatar.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import SwiftUI

struct UserAvatar: View {
    // View Properties
    let avatar: String
    
    var body: some View {
        Image(avatar)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .frame(width: 37, height: 37)
            .background(
                Circle()
                    .foregroundStyle(.black)
                    .frame(width: 44, height: 44)
            )
    }
}

// MARK: - Previews
#Preview {
    UserAvatar(avatar: "woman")
}
