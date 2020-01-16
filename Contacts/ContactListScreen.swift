//
//  ContactListScreen.swift
//  Contacts
//
//  Created by Павел Скляр on 16.01.2020.
//  Copyright © 2020 Павел Скляр. All rights reserved.
//

import UIKit

class ContactListScreen: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var contacts: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contacts = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Contact] {
        var tempContacts: [Contact] = []
        
        let contact1 = Contact(name: "Павел", surname: "Скляр", phone: "8 (999) 888-77-66", email: "pavel@sklyar.ru")
        let contact2 = Contact(name: "Арина", surname: "Куликова", phone: "8 (999) 777-66-55", email: "arina@kulikova.ru")
        let contact3 = Contact(name: "Иван", surname: "Зайцев", phone: "8 (999) 666-55-44", email: "ivan@zaytsev.ru")
        
        tempContacts.append(contact1)
        tempContacts.append(contact2)
        tempContacts.append(contact3)
        
        return tempContacts
    }
    
    func addContact(name: String, surname: String, phone: String, email: String) {
        contacts.append(Contact(name: name, surname: surname, phone: phone, email: email))
    }
}

extension ContactListScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = contacts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell") as! ContactCell
        
        cell.setContact(contact: contact)
        
        return cell
    }
}
