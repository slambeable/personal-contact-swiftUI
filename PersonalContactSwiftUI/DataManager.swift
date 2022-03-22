//
//  DataManager.swift
//  PersonalContactSwiftUI
//
//  Created by Андрей Евдокимов on 22.03.2022.
//

class DataManager {
    static let shared = DataManager()

    func getNames() -> [String] {
        [
            "Oliver",
            "Jack",
            "Harry",
            "Jacob",
            "Charley",
            "Thomas",
            "George",
            "Oscar",
            "James",
            "William"
        ]
    }
    
    func getSurnames() -> [String] {
        [
            "Smith",
            "Johnson",
            "Williams",
            "Jones",
            "Brown",
            "Davis",
            "Miller",
            "Wilson",
            "Moore",
            "Taylor"
        ]
    }
    
    func getPhoneNumbers() -> [String] {
        [
            "123456789",
            "987654321",
            "123498765",
            "987612345",
            "135792468",
            "246813579",
            "975318642",
            "864297531",
            "564738291",
            "192837465"
        ]
    }
    
    func getEmail() -> [String] {
        [
            "1234@mail.ru",
            "5678@mail.ru",
            "2468@mail.ru",
            "1357@mail.ru",
            "1287@mail.ru",
            "3465@mail.ru",
            "2345@mail.ru",
            "3456@mail.ru",
            "4567@mail.ru",
            "5678@mail.ru"
        ]
    }
    
    private init() {}
}
