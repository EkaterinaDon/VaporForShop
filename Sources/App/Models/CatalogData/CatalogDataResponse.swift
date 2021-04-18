//
//  CatalogDataResponse.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

struct CatalogDataResponse: Content {
    var page_number: Int
    var error_message: String?
}
