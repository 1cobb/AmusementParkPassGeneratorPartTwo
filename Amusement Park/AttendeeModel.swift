//
//  AttendeeModel.swift
//  Amusement Park
//
//  Created by James Cobb on 3/2/17.
//  Copyright © 2017 James Cobb. All rights reserved.
//

import Foundation

protocol ParkAttendee {
    func parkAccess() -> parkAccessType
    func ridePass() -> ridePassType
    func parkDiscount() -> parkDiscountType
}

protocol RequiredPersonalInfo {
    var firstName: String? { get }
    var lastName: String? { get }
    var streetAddress: String? { get }
    var city: String? { get }
    var state: String? { get }
    var zipCode: Int? { get }
    var dateOfBirth: String? { get }
}

struct Person: RequiredPersonalInfo {
    var firstName: String?
    var lastName: String?
    var streetAddress: String?
    var city: String?
    var state: String?
    var zipCode: Int?
    var dateOfBirth: String?
}

struct parkAccessType {
    let amusementAreas: Bool
    let kitchenAreas: Bool
    let rideControlAreas: Bool
    let maintenaceAreas: Bool
    let officeAreas: Bool
}

struct ridePassType {
    let allRides: Bool
    let skipAllRides: Bool
}

struct parkDiscountType {
    let foodDiscount: Double?
    let merchandiseDiscount: Double?
}

enum Guest: ParkAttendee {
    case classicGuest
    case vip
    case freeChild
    
    func parkAccess() -> parkAccessType {
        switch self {
        case .classicGuest, .vip, .freeChild:
            return parkAccessType(amusementAreas: true, kitchenAreas: false, rideControlAreas: false, maintenaceAreas: false, officeAreas: false)
        }
    }
    
    func ridePass() -> ridePassType {
        switch self {
        case .classicGuest, .freeChild:
            return ridePassType(allRides: true, skipAllRides: false)
        case .vip:
            return ridePassType(allRides: true, skipAllRides: true)
        }
    }
    
    func parkDiscount() -> parkDiscountType {
        switch self {
        case .classicGuest, .freeChild:
            return parkDiscountType(foodDiscount: 0.0, merchandiseDiscount: 0.0)
        case .vip:
            return parkDiscountType(foodDiscount: 0.10, merchandiseDiscount: 0.20)
        }
    }
    
    
}

enum Employees: ParkAttendee {
    case hourlyFoodServices
    case hourlyRideServices
    case hourlyMaintenace
    case manager
    
    func parkAccess() -> parkAccessType {
        switch self {
        case .hourlyFoodServices:
            return parkAccessType(amusementAreas: true, kitchenAreas: true, rideControlAreas: false, maintenaceAreas: false, officeAreas: false)
        case .hourlyRideServices:
            return parkAccessType(amusementAreas: true, kitchenAreas: false, rideControlAreas: true, maintenaceAreas: false, officeAreas: false)
        case .hourlyMaintenace:
            return parkAccessType(amusementAreas: true, kitchenAreas: true, rideControlAreas: true, maintenaceAreas: true, officeAreas: false)
        case .manager:
            return parkAccessType(amusementAreas: true, kitchenAreas: true, rideControlAreas: true, maintenaceAreas: true, officeAreas: true)
        }
    }
    
    func ridePass() -> ridePassType {
        switch self {
        case .hourlyFoodServices, .hourlyRideServices, .hourlyMaintenace, .manager:
            return ridePassType(allRides: true, skipAllRides: false)
        }
    }
    
    func parkDiscount() -> parkDiscountType {
        switch self {
        case .hourlyFoodServices, .hourlyRideServices, .hourlyMaintenace:
            return parkDiscountType(foodDiscount: 0.15, merchandiseDiscount: 0.25)
        case .manager:
            return parkDiscountType(foodDiscount: 0.25, merchandiseDiscount: 0.25)
        }
}
}
































