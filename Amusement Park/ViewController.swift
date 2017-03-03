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
        let attendee = Person(firstName: "James", lastName: "Cobb", streetAddress: "123 South Farm Street", city: "Atlanta", state: "Georgia", zipCode: 30253, dateOfBirth: "9/13/1992")
        
        let parkPass = PassGenerator(attendee: attendee, typeOfAttendee: Employees.manager)
        
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

































