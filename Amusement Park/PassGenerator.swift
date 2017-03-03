//
//  PassGenerator.swift
//  Amusement Park
//
//  Created by James Cobb on 3/2/17.
//  Copyright © 2017 James Cobb. All rights reserved.
//

import Foundation

class PassGenerator {
    
    let attendee: Person
    let typeOfAttendee : ParkAttendee
    
    init(attendee: Person, typeOfAttendee: ParkAttendee) {
        self.attendee = attendee
        self.typeOfAttendee = typeOfAttendee
    }
    
    func dataForPassGenerator() throws {
        switch typeOfAttendee {
        
        case Guest.freeChild:
            guard attendee.dateOfBirth == nil else {
                throw dataInputMissing.missingDateOfBirth
            }
        
        case Guest.classicGuest, Guest.vip:
            print("No Information Required")
        
        case is Employees:
            guard attendee.firstName == nil else {
                throw dataInputMissing.missingFirstName
            }
            guard attendee.lastName == nil else {
                throw dataInputMissing.missingLastName
            }
            guard attendee.streetAddress == nil else {
                throw dataInputMissing.missingStreetAddress
            }
            guard attendee.state == nil else {
                throw dataInputMissing.missingState
            }
            guard attendee.city == nil else {
                throw dataInputMissing.missingCity
            }
            guard attendee.zipCode == nil else {
               throw dataInputMissing.missingZipcode
            }
        default:
            print("Not Enough")
       
    }

}

    func AttendeePass() {
        print(attendee,typeOfAttendee)
}


}


























































