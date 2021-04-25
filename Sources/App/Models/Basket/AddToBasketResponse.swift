//
//  AddToBasketResponse.swift
//  
//
//  Created by Ekaterina on 25.04.21.
//

import Foundation
import Vapor

struct AddToBasketResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
