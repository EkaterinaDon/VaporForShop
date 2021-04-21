//
//  AddReviewRequest.swift
//  
//
//  Created by Ekaterina on 21.04.21.
//

import Foundation
import Vapor

struct AddReviewRequest: Content {
    var id_user: Int
    var id_product: Int
    var text: String
}
