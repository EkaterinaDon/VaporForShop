//
//  LogoutResponse.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

struct LogoutResponse: Content {
    var result: Int
    var error_message: String?
}
