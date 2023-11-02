//
//  EventsLogic.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import SwiftUI

@Observable
final class EventsLogic {
    static let shared = EventsLogic()
    
    let interactor: EventInteractor
    
    var events: [Event] = []
    
    var showAlert = false
    var message = ""
    
    init(interactor: EventInteractor = EventProdInteractor()) {
        self.interactor = interactor
        do {
            self.events = try interactor.loadEvents()
        } catch {
            message = error.localizedDescription
            showAlert.toggle()
        }
    }
}
