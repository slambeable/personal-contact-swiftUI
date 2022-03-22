//
//  Person.swift
//  PersonalContactSwiftUI
//
//  Created by Андрей Евдокимов on 22.03.2022.
//

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func generatePersons() -> [Person] {
        var persons: [Person] = []

        let randomNames = DataManager.shared.getNames().shuffled()
        let randomSurnames = DataManager.shared.getSurnames()
        let randomPhones = DataManager.shared.getPhoneNumbers()
        let randomEmails = DataManager.shared.getEmail()
        
        for index in 0...randomNames.count - 1 {
            let person = Person(
                id: index,
                name: randomNames[index],
                surname: randomSurnames[index],
                phone: randomPhones[index],
                email: randomEmails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
