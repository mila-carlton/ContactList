//
//  DetailsView.swift
//  ContactList
//
//  Created by PASGON TEXTILE on 27.12.23.
//

import SwiftUI

struct DetailsView: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(person.fullName)
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                Spacer()
            }
                Divider()
            Label(person.phoneNumber, systemImage: "phone.fill")
            Divider()
            Label(person.email, systemImage: "message.fill")
            Divider()
            Spacer()
        }
    }
}

#Preview {
    DetailsView(person: Person.getContactList()[0])
}
