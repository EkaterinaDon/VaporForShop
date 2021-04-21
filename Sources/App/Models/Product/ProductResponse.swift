//
//  ProductResponse.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

struct ProductResponse: Content {
    var result: Int
    var product_name: String
    var product_price: Int
    var product_description: String
    var user_message: String?
    var error_message: String?
}
