//
//  ReviewsResponse.swift
//  
//
//  Created by Ekaterina on 21.04.21.
//

import Foundation
import Vapor

struct ReviewsResponse: Content {
    var page_number: Int
    var max_rows_count: Int
    var reviews: [Review]
    var user_message: String?
    var error_message: String?
}

struct Review: Content {
    let id_product: Int
    let id_user: Int
    let user_name: String
    let text: String
}
