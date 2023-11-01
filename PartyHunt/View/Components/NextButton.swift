//
//  NextButton.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import SwiftUI

struct NextButton: View {
    // MARK: View Properties
    
    var body: some View {
        Image(systemName: "chevron.right")
            .resizable()
            .scaledToFit()
            .frame(width: 20, height: 20)
            .background(
                Circle()
                    .foregroundStyle(.white)
                    .frame(width: 50, height: 50)
            )
            .onTapGesture {
                
            }
    }
}

// MARK: - Previews
#Preview {
    NextButton()
}
