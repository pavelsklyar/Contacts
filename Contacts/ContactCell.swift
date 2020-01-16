//
//  ContactCell.swift
//  Contacts
//
//  Created by Павел Скляр on 16.01.2020.
//  Copyright © 2020 Павел Скляр. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
    
    @IBOutlet weak var contactText: UILabel!
    
    func setContact(contact: Contact) {
        contactText.text = contact.name + " " + contact.surname
    }
    
}
