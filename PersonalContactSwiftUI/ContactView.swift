//
//  ContactView.swift
//  PersonalContactSwiftUI
//
//  Created by Андрей Евдокимов on 22.03.2022.
//

import SwiftUI

struct ContactView: View {
    let person: Person

    var body: some View {
        VStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 160, height: 160)
                    Spacer()
                }
                .frame(height: 200)
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
        .navigationTitle(person.fullName)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(person: Person(
            id: 1,
            name: "Steve",
            surname: "Robson",
            phone: "21413413",
            email: "fdada@gmail.com"
        ))
    }
}
