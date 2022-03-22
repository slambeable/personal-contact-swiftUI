//
//  ContactsView.swift
//  PersonalContactSwiftUI
//
//  Created by Андрей Евдокимов on 22.03.2022.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                List(Person.generatePersons()) { person in
                    NavigationLink(person.fullName) {
                        ContactView(person: person)
                    }
                }
            }.navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
