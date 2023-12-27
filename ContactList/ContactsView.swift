//
//  ContactsView.swift
//  ContactList
//
//  Created by PASGON TEXTILE on 27.12.23.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: DetailsView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Contact List")
        }
    }
}
#Preview {
    ContactsView(persons: Person.getContactList())
}
