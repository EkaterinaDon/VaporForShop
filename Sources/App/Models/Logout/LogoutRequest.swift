//
//  LogoutRequest.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

struct LogoutRequest: Content {
    var username: String
}
