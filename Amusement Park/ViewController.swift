//
//  ViewController.swift
//  Amusement Park
//
//  Created by James Cobb on 3/2/17.
//  Copyright © 2017 James Cobb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Attendee Input
        let attendee = Person(firstName: "James", lastName: "Cobb", streetAddress: "123 South Farm Street", city: "Atlanta", state: "Georgia", zipCode: 30306, dateOfBirth: "9/13/1992")
        let parkPass = PassGenerator(attendee: attendee, typeOfAttendee: Employees.manager)
        
        /* let attendee = Person(firstName: "Juan", lastName: "Rodriguiz", streetAddress: "125 Ford St", city: "McDonough", state: "Georgia", zipCode: 30253, dateOfBirth: "3/15/1990")
        let parkPass = PassGenerator(attendee: attendee, typeOfAttendee: Employees.hourlyFoodServices) */
        
        /* let attendee = Person(firstName: "Jimmy", lastName: "Johnson", streetAddress: "345 Spring St", city: "Lawrenceville", state: "Georgia", zipCode: 30044, dateOfBirth: "5/2/1996")
        let parkPass = PassGenerator(attendee: attendee, typeOfAttendee: Employees.hourlyRideServices) */
        
        /* let attendee = Person(firstName: "Tammy", lastName: "Foster", streetAddress: "555 Derring Rd", city: "College Park", state: "Georgia", zipCode: 30456, dateOfBirth: "3/12/1989")
        let parkPass = PassGenerator(attendee: attendee, typeOfAttendee: Employees.hourlyMaintenace) */
        
        /* let attendee = Person(firstName: "Rosa", lastName: "Carter", streetAddress: "213 Ring St", city: "Atlanta", state: "Georgia", zipCode: 30305, dateOfBirth: "4/23/1985")
        let parkPass = PassGenerator(attendee: attendee, typeOfAttendee: Guest.classicGuest) */
        
        /* let attendee = Person(firstName: "Cameron", lastName: "Giles", streetAddress: "455 Park Lane", city: "Buckhead", state: "Georgia", zipCode: 30324, dateOfBirth: "4/5/2005")
        let parkPass = PassGenerator(attendee: attendee, typeOfAttendee: Guest.freeChild) */
        
        /* let attendee = Person(firstName: "Joy", lastName: "Giles", streetAddress: "455 Park lane", city: "Buckhead", state: "Georgia", zipCode: 30324, dateOfBirth: "3/4/1980")
        let parkPass = PassGenerator(attendee: attendee, typeOfAttendee: Guest.vip) */
        
        parkPass.AttendeePass()
        do {
            try parkPass.dataForPassGenerator()
        } catch let error {
            print(error)
        }
        amusementAreaScanner(parkPass)
        kitchenAreaScanner(parkPass)
        rideControlAreaScanner(parkPass)
        maintenanceAreaScanner(parkPass)
        officeAreaScanner(parkPass)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Park Entrance Gates
    func amusementAreaScanner(_ parkPass: PassGenerator) {
        switch parkPass.typeOfAttendee {
        case Guest.classicGuest, Guest.vip, Guest.freeChild:
            print("Access Granted")
        case is Employees:
            print("Access Granted")
        default:
            print("Try Again")
        }
    }
    
    func kitchenAreaScanner(_ parkPass: PassGenerator) {
        switch parkPass.typeOfAttendee {
        case Guest.classicGuest, Guest.vip, Guest.freeChild, Employees.hourlyRideServices:
            print("Access Not Granted")
        case Employees.hourlyFoodServices, Employees.hourlyMaintenace, Employees.manager:
            print("Access Granted")
        default:
            print("Try Again")
        }
    }
    
    func rideControlAreaScanner(_ parkPass: PassGenerator) {
        switch parkPass.typeOfAttendee {
        case Guest.classicGuest, Guest.vip, Guest.freeChild, Employees.hourlyFoodServices:
            print("Access Not Granted")
        case Employees.hourlyRideServices, Employees.hourlyMaintenace, Employees.manager:
            print("Access Granted")
        default:
            print("Try Again")
        }
    }
    
    func maintenanceAreaScanner(_ parkPass: PassGenerator) {
        switch parkPass.typeOfAttendee {
        case Guest.classicGuest, Guest.vip, Guest.freeChild, Employees.hourlyFoodServices, Employees.hourlyRideServices:
            print("Access Not Granted")
        case Employees.hourlyMaintenace, Employees.manager:
            print("Access Granted")
        default:
            print("Try Again")
        }
    }
    
    func officeAreaScanner(_ parkPass: PassGenerator) {
        switch parkPass.typeOfAttendee {
        case Guest.classicGuest, Guest.vip, Guest.freeChild, Employees.hourlyFoodServices, Employees.hourlyRideServices, Employees.hourlyMaintenace:
            print("Access Not Granted")
        case Employees.manager:
            print("Access Granted")
        default:
            print("Try Again")
        }
    }
    

}

































