//
//  View.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import SwiftUI

extension View {
    func backgroundStyle() -> some View {
        modifier(Background())
    }
    
    func navBarStyle() -> some View {
        modifier(NavBar())
    }
    
    func topTicketStyle() -> some View {
        modifier(TopTicketContainer())
    }
    
    func middleTicketStyle() -> some View {
        modifier(MiddleTicketContainer())
    }
    
    func bottomTicketStyle() -> some View {
        modifier(BottomTicketContainer())
    }
}
