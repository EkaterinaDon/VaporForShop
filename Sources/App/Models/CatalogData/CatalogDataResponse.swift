//
//  CatalogDataResponse.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

struct CatalogDataResponse: Content {
    var id_product: Int
    var product_name: String
    var price: Int
    var user_message: String?
    var error_message: String?
}

