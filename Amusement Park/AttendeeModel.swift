//
//  AttendeeModel.swift
//  Amusement Park
//
//  Created by James Cobb on 3/2/17.
//  Copyright © 2017 James Cobb. All rights reserved.
//

import Foundation


enum Guest {
    case classicGuest
    case vip
    case freeChild
    case seasonPassHolder
    case senior

}

enum Employee {
    case hourlyFoodServices
    case hourlyRideServices
    case hourlyMaintenace
    case manager
    case contractWorker
    
}
    
enum Vendor {
    case acme
    case orkin
    case fedex
    case nwElectrical
}

class Attendee {
    let typeOfGuest: Guest?
    let typeOfEmployee: Employee?
    let typeOfVendor: Vendor?
        
    var firstName: String?
    var lastName: String?
    var dateOfBirth: String?
    
    init(typeOfGuest: Guest, typeOfEmployee: Employee, typeOfVendor: Vendor, firstName: String, lastName: String, dateOfBirth: String) {
        self.typeOfGuest = typeOfGuest
        self.typeOfEmployee = typeOfEmployee
        self.typeOfVendor = typeOfVendor
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
    }
        
        
}































