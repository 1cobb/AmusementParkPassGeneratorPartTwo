//
//  PassGeneratorViewController.swift
//  Amusement Park
//
//  Created by James Cobb on 3/12/17.
//  Copyright © 2017 James Cobb. All rights reserved.
//

import UIKit

class PassGeneratorViewController: UIViewController {

    // Key Card
    @IBOutlet weak var keyLoop: UIView!
    @IBOutlet weak var idFullName: UILabel!
    @IBOutlet weak var idAttendeeType: UILabel!

    
    // Test Screen & Create Pass Button
    @IBOutlet weak var testResultsScreen: UIView!
    @IBOutlet weak var testResultsScreenText: UILabel!
    @IBOutlet weak var createNewPassButton: UIButton!
    
    var firstName = String()
    var lastName = String()
    var attendeeTypeLabel = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyLoop.layer.cornerRadius = 10
        idFullName.text = "\(firstName) \(lastName)"
        idAttendeeType.text = "\(attendeeTypeLabel)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Testing buttons
    
    @IBAction func areaAccessButtonPressed(_ sender: Any) {
    
        switch attendeeTypeLabel.description {
        case "Classic Guest":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Access Denied"
        case "Child":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Access Denied"
        case "Season Pass Holder":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Access Denied"
        case "Senior":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Access Denied"
        case "V.I.P.":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Access Denied"
        case "Food Services Employee":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case  "Ride Services Employee":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Maintenance Employee":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Contract Worker":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Manager":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Acme Vendor":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Orkin Vendor":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Fedex Vendor":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "NW Electrical Vendor":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        default:
            testResultsScreen.backgroundColor = .black
            testResultsScreenText.text = "Error"
            
        }
}
    @IBAction func rideAccessButtonPressed(_ sender: Any) {
        switch attendeeTypeLabel.description {
        case "Classic Guest":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Child":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Season Pass Holder":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Senior":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Access Granted"
        case "V.I.P.":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Access Granted"
        case "Food Services Employee":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Ride Services Employee":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Maintenance Employee":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Contract Worker":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Manager":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Acme Vendor":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Access Denied"
        case "Orkin Vendor":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        case "Fedex Vendor":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Access Denied"
        case "NW Electrical Vendor":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Access Granted"
        default:
            testResultsScreen.backgroundColor = .black
            testResultsScreenText.text = "Error"
            
        }

    }
    

    @IBAction func discountAccessButtonPressed(_ sender: Any) {
        switch attendeeTypeLabel.description {
        case "Classic Guest":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Discount not available"
        case "Child":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Discount not available"
        case "Season Pass Holder":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "10% discount on food & 20% discount on merchandise"
        case "Senior":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "10% discount on food & 10% discount on merchandise"
        case "V.I.P.":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "10% discount on food & 20% discount on merchandise"
        case "Food Services Employee":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "15% discount on food & 25% discount on merchandise"
        case "Ride Services Employee":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "15% discount on food & 25% discount on merchandise"
        case "Maintenance Employee":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "15% discount on food & 25% discount on merchandise"
        case "Contract Worker":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Discount not available"
        case "Manager":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "25% discount on food & 25% discount on merchandise"
        case "Acme Vendor":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Discount not available"
        case "Orkin Vendor":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Discount not available"
        case "Fedex Vendor":
            testResultsScreen.backgroundColor = .red
            testResultsScreenText.text = "Discount not available"
        case "NW Electrical Vendor":
            testResultsScreen.backgroundColor = .green
            testResultsScreenText.text = "Discount not available"
        default:
            testResultsScreen.backgroundColor = .black
            testResultsScreenText.text = "Error"
            
        }

    }
            
    
    
    

    

    }
    

    
