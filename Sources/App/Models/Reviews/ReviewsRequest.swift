//
//  ReviewsRequest.swift
//  
//
//  Created by Ekaterina on 21.04.21.
//

import Foundation
import Vapor

struct ReviewsRequest: Content {
    var id_product: Int
    var page_number: Int
}
