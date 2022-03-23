//
//  ContactsSectionView.swift
//  PersonalContactSwiftUI
//
//  Created by Андрей Евдокимов on 22.03.2022.
//

import SwiftUI

struct ContactsSectionView: View {
    let person: [Person]

    var body: some View {
        NavigationView {
            VStack {
                List(person) { person in
                    Section(header: Text(person.fullName)) {
                        HStack {
                            Image(systemName: "phone.fill")
                                .foregroundColor(.blue)
                            Text(person.phone)
                        }
                        HStack {
                            Image(systemName: "mail.fill")
                                .foregroundColor(.blue)
                            Text(person.email)
                        }
                    }
                }
            }.navigationTitle("Contact List")
        }
    }
}

struct ContactsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsSectionView(person: Person.generatePersons())
    }
}
