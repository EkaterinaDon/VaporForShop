//
//  PayBasketRequest.swift
//  
//
//  Created by Ekaterina on 25.04.21.
//

import Foundation
import Vapor

struct PayBasketRequest: Content {
    var id_product: Int
    var quantity: Int
    var totalSum: Int
}
