//
//  Contact.swift
//  ContactsHomework
//
//  Created by YeYixin on 7/20/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation

class Contact {
    
    let contactId : String = NSUUID().UUIDString
    
    var firstname, lastname, email, phone:String?
    
    init(firstname:String?,lastname:String?,email:String?,phone:String?) {
        self.firstname = firstname;
        self.lastname = lastname;
        self.email = email;
        self.phone = phone;
    }
    
}