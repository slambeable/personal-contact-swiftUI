//
//  ContactsView.swift
//  PersonalContactSwiftUI
//
//  Created by Андрей Евдокимов on 22.03.2022.
//

import SwiftUI

struct ContactsView: View {
    let person: [Person]

    var body: some View {
        NavigationView {
            ZStack {
                List(person) { person in
                    NavigationLink(person.fullName) {
                        ContactView(person: person)
                    }
                }
                .listStyle(.plain)
            }.navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(person: Person.generatePersons())
    }
}
