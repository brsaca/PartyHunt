//
//  EventsList.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import SwiftUI

struct EventsList: View {
    // MARK: View Properties
    let events: [Event]
    @Binding var eventSelected: Event?
    
    var body: some View {
        ScrollView {
            LazyVStack(pinnedViews: [.sectionHeaders]) {
                Section {
                    ForEach(events) { event in
                        NavigationLink(value: event) {
                            EventCell(event: event, status: .booked, eventSelected: $eventSelected)
                                .padding(.horizontal, 20)
                        }
                    }
                } header: {
                    HStack(alignment: .top) {
                        Text("EVENTS NEARBY")
                            .font(.outfit(.bold, size: 14))
                            .foregroundStyle(.white)
                            .padding(.leading, 24)
                        Spacer()
                    }
                    .frame(width: .infinity, height: 40)
                }
                .id("SECCION1")
            }
        }
        .navigationDestination(for: Event.self) { event in
            DetailView(event: event, eventSelected: $eventSelected)
                .navigationBarBackButtonHidden(true)
        }
    }
    
}

#Preview {
    EventsList(events: EventViewModel.preview.eventsLogic.events, eventSelected: .constant(Event.mock))
        .background(.customYellow)
}
