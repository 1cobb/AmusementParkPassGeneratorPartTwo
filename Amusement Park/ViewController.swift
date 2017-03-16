//
//  ViewController.swift
//  Amusement Park
//
//  Created by James Cobb on 3/2/17.
//  Copyright © 2017 James Cobb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Red Bar - Guest, Employee, Vendor Buttons
    @IBOutlet weak var redBarGuestButton: UIButton!
    @IBOutlet weak var redBarEmployeeButton: UIButton!
    @IBOutlet weak var redBarVendorButton: UIButton!
    
    // Yellow Bar - Guest Type
    @IBOutlet weak var yellowBarClassicButton: UIButton!
    @IBOutlet weak var yellowBarChildButton: UIButton!
    @IBOutlet weak var yellowBarSeasonPassButton: UIButton!
    @IBOutlet weak var yellowBarSeniorButton: UIButton!
    @IBOutlet weak var yellowBarVIPButton: UIButton!
    
    // Yellow Bar - Employee Type
    @IBOutlet weak var yellowBarFoodServicesButton: UIButton!
    @IBOutlet weak var yellowBarRideServicesButton: UIButton!
    @IBOutlet weak var yellowBarMaintenanceButton: UIButton!
    @IBOutlet weak var yellowBarManagerButton: UIButton!
    @IBOutlet weak var yellowBarContractWorkerButton: UIButton!
    
    // Yellow Bar - Vendor Type
    @IBOutlet weak var yellowBarAcmeButton: UIButton!
    @IBOutlet weak var yellowBarOrkinButton: UIButton!
    @IBOutlet weak var yellowBarFedexButton: UIButton!
    @IBOutlet weak var yellowButtonNwElectricalButton: UIButton!
   
    // Yellow Bar - Stackview Buttons
    @IBOutlet weak var guestTypeButtons: UIStackView!
    @IBOutlet weak var employeeTypeButtons: UIStackView!
    @IBOutlet weak var vendorTypeButtons: UIStackView!
    
    // Attendee Data Input Textfields
    @IBOutlet weak var dateOfBirthTextfield: UITextField!
    @IBOutlet weak var ssnTextfield: UITextField!
    @IBOutlet weak var projectNumberTextfield: UITextField!
    @IBOutlet weak var firstNameTextfield: UITextField!
    @IBOutlet weak var lastNameTextfield: UITextField!
    @IBOutlet weak var companyTextfield: UITextField!
    @IBOutlet weak var streetAddressTextfield: UITextField!
    @IBOutlet weak var cityTextfield: UITextField!
    @IBOutlet weak var stateTextfield: UITextField!
    @IBOutlet weak var zipCodeTextfield: UITextField!
    
    // Generate Pass and populate data buttons
    @IBOutlet weak var generatePassButton: UIButton!
    @IBOutlet weak var populateDataButton: UIButton!
    
    var guestType: Guest?
    var employeeType: Employee?
    var vendorType: Vendor?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // User picks attendee type
    @IBAction func redBarGuestButtonPressed(_ sender: Any) {
        guestTypeButtons.isHidden = false
        employeeTypeButtons.isHidden = true
        vendorTypeButtons.isHidden = true
    }
    
    @IBAction func redBarEmployeeButtonPressed(_ sender: Any) {
        employeeTypeButtons.isHidden = false
        guestTypeButtons.isHidden = true
        vendorTypeButtons.isHidden = true
    }

    @IBAction func redBarVendorButtonPressed(_ sender: Any) {
        vendorTypeButtons.isHidden = false
        guestTypeButtons.isHidden = true
        employeeTypeButtons.isHidden = true
    }
    
    
    // User selects guest type
    @IBAction func yellowBarClassicButtonPressed(_ sender: Any) {
        noPersonalInfomationRequired()
        guestType = Guest.classicGuest
    }
    
    @IBAction func yellowBarChildButtonPressed(_ sender: Any) {
        childInfo()
        guestType = Guest.freeChild
    }
    
    @IBAction func yellowBarSeasonPassButtonPressed(_ sender: Any) {
        personalInformationRequired()
        guestType = Guest.seasonPassHolder
    }
    
    @IBAction func yellowBarSeniorButtonPressed(_ sender: Any) {
        seniorInfomation()
        guestType = Guest.senior
    }
    
    @IBAction func yellowBarVIPButtonPressed(_ sender: Any) {
        noPersonalInfomationRequired()
        guestType = Guest.vip
    }
    
    
    // User selects employee type
    @IBAction func yellowBarFoodServicesButtonPressed(_ sender: Any) {
        personalInformationRequired()
        employeeType = Employee.hourlyFoodServices
    }
    
    @IBAction func yellowBarRideServicesButtonPressed(_ sender: Any) {
        personalInformationRequired()
        employeeType = Employee.hourlyRideServices
    }
    
    @IBAction func yellowBarMaintenanceButtonPressed(_ sender: Any) {
        personalInformationRequired()
        employeeType = Employee.hourlyMaintenace
    }
    
    @IBAction func yellowBarManagerButtonPressed(_ sender: Any) {
        personalInformationRequired()
        employeeType = Employee.manager
    }
    
    @IBAction func yellowBarContractWorkerButtonPressed(_ sender: Any) {
        personalInformationRequired()
        employeeType = Employee.contractWorker
    }
    
    
    // User selects vendor type
    @IBAction func yellowBarAcmeButtonPressed(_ sender: Any) {
        vendorInformation()
        vendorType = Vendor.acme
    }
    
    @IBAction func yellowBarOrkinButtonPressed(_ sender: Any) {
        vendorInformation()
        vendorType = Vendor.orkin
    }
    
    @IBAction func yellowBarFedexButtonPressed(_ sender: Any) {
        vendorInformation()
        vendorType = Vendor.fedex
    }
    
    @IBAction func yellowBarNwElectricalButtonPressed(_ sender: Any) {
        vendorInformation()
        vendorType = Vendor.nwElectrical
    }
        
    
    // Disables textfields for required attendee information
    func noPersonalInfomationRequired() {
        dateOfBirthTextfield.isEnabled = false
        ssnTextfield.isEnabled = false
        projectNumberTextfield.isEnabled = false
        companyTextfield.isEnabled = false
        streetAddressTextfield.isEnabled = false
        cityTextfield.isEnabled = false
        stateTextfield.isEnabled = false
        zipCodeTextfield.isEnabled = false
    }
    
    func childInfo() {
        dateOfBirthTextfield.isEnabled = true
        ssnTextfield.isEnabled = false
        projectNumberTextfield.isEnabled = false
        companyTextfield.isEnabled = false
        streetAddressTextfield.isEnabled = false
        cityTextfield.isEnabled = false
        stateTextfield.isEnabled = false
        zipCodeTextfield.isEnabled = false
    }
    
    func personalInformationRequired() {
        dateOfBirthTextfield.isEnabled = false
        ssnTextfield.isEnabled = false
        projectNumberTextfield.isEnabled = false
        companyTextfield.isEnabled = false
    }
    
    func seniorInfomation() {
        ssnTextfield.isEnabled = false
        projectNumberTextfield.isEnabled = false
        companyTextfield.isEnabled = false
        stateTextfield.isEnabled = false
        cityTextfield.isEnabled = false
        zipCodeTextfield.isEnabled = false
    }
    
    func vendorInformation() {
        ssnTextfield.isEnabled = false
        projectNumberTextfield.isEnabled = false
        streetAddressTextfield.isEnabled = false
        cityTextfield.isEnabled = false
        stateTextfield.isEnabled = false
        zipCodeTextfield.isEnabled = false
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestinationViewController: PassGeneratorViewController = segue.destination as! PassGeneratorViewController
        DestinationViewController.firstName = firstNameTextfield.text!
        DestinationViewController.lastName = lastNameTextfield.text!
        
        if guestType == Guest.classicGuest {
            DestinationViewController.attendeeTypeLabel = "Classic Guest"
        } else if guestType == Guest.freeChild {
            DestinationViewController.attendeeTypeLabel = "Child"
        } else if guestType == Guest.seasonPassHolder {
            DestinationViewController.attendeeTypeLabel = "Season Pass Holder"
        } else if guestType == Guest.senior {
            DestinationViewController.attendeeTypeLabel = "Senior"
        } else if guestType == Guest.vip {
            DestinationViewController.attendeeTypeLabel = "V.I.P."
            
        } else if employeeType == Employee.hourlyFoodServices {
            DestinationViewController.attendeeTypeLabel = "Food Services Employee"
        } else if employeeType == Employee.hourlyRideServices {
            DestinationViewController.attendeeTypeLabel = "Food Ride Employee"
        } else if employeeType == Employee.hourlyMaintenace {
            DestinationViewController.attendeeTypeLabel = "Food Maintenance Employee"
        } else if employeeType == Employee.contractWorker {
            DestinationViewController.attendeeTypeLabel = "Contract Worker"
        } else if employeeType == Employee.manager {
            DestinationViewController.attendeeTypeLabel = "Manager"
            
        } else if vendorType == Vendor.acme {
            DestinationViewController.attendeeTypeLabel = "Acme Vendor"
        } else if vendorType == Vendor.orkin {
            DestinationViewController.attendeeTypeLabel = "Orkin Vendor"
        } else if vendorType == Vendor.fedex {
            DestinationViewController.attendeeTypeLabel = "Fedex Vendor"
        } else if vendorType == Vendor.nwElectrical {
            DestinationViewController.attendeeTypeLabel = "NW Electrical Vendor"
            
            
            
        }
        
    }
    
    @IBAction func populateDataButtonPressed(_ sender: Any) {
        let textfields = [dateOfBirthTextfield,ssnTextfield,projectNumberTextfield,firstNameTextfield,lastNameTextfield,companyTextfield,streetAddressTextfield,cityTextfield,stateTextfield,zipCodeTextfield]
        for textfield in textfields {
            if textfield?.isEnabled == true && textfield?.hasText == false {
                let alert = UIAlertController(title: "Required Information Needed!", message: "Please fill in the enabled textfields", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Go Back", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            } else if textfield?.isEnabled == true && textfield?.hasText == true {
                let alert = UIAlertController(title: "Welcome to the Park", message: "We've received you Information! Press 'Generate Pass' Next.", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Close", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
}







    
    
    
    
    
    


































