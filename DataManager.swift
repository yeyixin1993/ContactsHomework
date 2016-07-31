//
//  DataManager.swift
//  ContactsHomework
//
//  Created by YeYixin on 7/30/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation

class DataManager {
    
    var contactArray = [Contact(firstname: "Eli",lastname: "Ye",email: "yye@colgate.edu",phone: "3157969170"), Contact(firstname: "Joe",lastname: "Wang",email: "jwang@gmail.com",phone: "8675349871"), Contact(firstname: "Alexendra",lastname: "Marrone",email: "amarrone@qq.com",phone: "4013587293"), Contact(firstname: "Tomas",lastname: "Morrison",email: "tomastheking@163.com",phone: ""),Contact(firstname: "Ohio", lastname: "Gentlewave", email: "", phone: "6718342905")]
    
    static let sharedManager : DataManager = DataManager()
    
    func getContacts() -> [Contact] {
        
        return contactArray
    }
    
    func updateContact(updatedContact : Contact) -> Bool {
        
        if let index = indexrow {
            if contactArray[index].firstname != updatedContact.firstname {
                contactArray[index].firstname = updatedContact.firstname
            }
            else if contactArray[index].lastname != updatedContact.lastname {
                contactArray[index].lastname = updatedContact.lastname
            }
            else if contactArray[index].email != updatedContact.email {
                contactArray[index].email = updatedContact.email
            }
            else if contactArray[index].phone != updatedContact.phone {
                contactArray[index].phone = updatedContact.phone
            }
            else {return false}
            
            return true
    
        }
        
        return false
    }
    
    
}