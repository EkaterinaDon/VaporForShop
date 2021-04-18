//
//  ProductRequest.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

struct ProductRequest: Content {
    var id_product: Int
    var product_name: String
    var price: Int
}
