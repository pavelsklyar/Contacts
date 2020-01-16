//
//  Contact.swift
//  Contacts
//
//  Created by Павел Скляр on 16.01.2020.
//  Copyright © 2020 Павел Скляр. All rights reserved.
//

import Foundation

class Contact {
    var name: String
    var surname: String
    var phone: String
    var email: String
    
    init(name: String, surname: String, phone: String, email: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.email = email
    }
}
