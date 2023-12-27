//
//  ContactListApp.swift
//  ContactList
//
//  Created by PASGON TEXTILE on 27.12.23.
//

import SwiftUI

@main
struct ContactListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(persons: Person.getContactList(), person: Person.getContactList()[0])
        }
    }
}
