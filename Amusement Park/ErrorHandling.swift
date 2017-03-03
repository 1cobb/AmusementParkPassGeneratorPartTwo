//
//  ErrorHandling.swift
//  Amusement Park
//
//  Created by James Cobb on 3/2/17.
//  Copyright © 2017 James Cobb. All rights reserved.
//

import Foundation

enum dataInputMissing: Error {
    case missingFirstName
    case missingLastName
    case missingStreetAddress
    case missingCity
    case missingState
    case missingZipcode
    case missingDateOfBirth
}
