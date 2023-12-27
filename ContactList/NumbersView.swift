//
//  NumbersView.swift
//  ContactList
//
//  Created by PASGON TEXTILE on 27.12.23.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        List {
            ForEach(persons) { person in
                Section(header:
                            Text(person.fullName)) {
                    Label(person.email, systemImage: "message.fill")
                    Label(person.phoneNumber, systemImage: "phone.fill")
                }
            }
        }
    }
}

#Preview {
    NumbersView(persons: Person.getContactList())
}
