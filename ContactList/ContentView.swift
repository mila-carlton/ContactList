//
//  ContentView.swift
//  ContactList
//
//  Created by PASGON TEXTILE on 27.12.23.
//

import SwiftUI

struct ContentView: View {
    let persons: [Person]
    let person: Person
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Label("Contacts", systemImage: "person.2")
                }
            NumbersView(persons: persons)
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

#Preview {
    ContentView(persons: Person.getContactList(), person: Person.getContactList()[0])
}
