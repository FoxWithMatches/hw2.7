//
//  Person.swift
//  contactLIst
//
//  Created by Alisa Ts on 09.11.2021.
//

struct Person {
    let name: String
    let surname: String
    let phone: Int
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for index in 0...9 {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phone: phones[index],
                                email: emails[index])
            
            persons.append(person)
        }
        
        return persons
    }
}
