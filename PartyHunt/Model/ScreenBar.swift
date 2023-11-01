//
//  ScreenBar.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import SwiftUI

enum ScreenBar {
    case concert
    case myTickets
    
    var rigthImage: Image? {
        switch (self) {
        case .concert: nil
        case .myTickets: Image(systemName:"square.and.arrow.up")
        }
    }
    
    var title: String {
        switch (self) {
        case .concert: "CONCERTS"
        case .myTickets: "MY TICKET"
        }
    }
}
