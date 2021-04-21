//
//  AddReviewResponse.swift
//  
//
//  Created by Ekaterina on 21.04.21.
//

import Foundation
import Vapor

struct AddReviewResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
