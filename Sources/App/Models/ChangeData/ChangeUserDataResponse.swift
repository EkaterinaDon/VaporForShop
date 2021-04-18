//
//  ChangeUserDataResponse.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

struct ChangeUserDataResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
