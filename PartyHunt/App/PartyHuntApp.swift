//
//  PartyHuntApp.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 30/10/23.
//

import SwiftUI

@main
struct PartyHuntApp: App {
    // MARK: View Properties
    @State var viewModel = EventViewModel()
    
    var body: some Scene {
        WindowGroup {
            ListView()
                .environment(viewModel)
        }
    }
}
