//
//  RemoveFromBasketRequest.swift
//  
//
//  Created by Ekaterina on 25.04.21.
//

import Foundation
import Vapor

struct RemoveFromBasketRequest: Content {
    var id_product: Int
    var quantity: Int
}
