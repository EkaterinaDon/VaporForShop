//
//  AuthRequest.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

struct AuthRequest: Content {
    var username: String
    var password: String
}
