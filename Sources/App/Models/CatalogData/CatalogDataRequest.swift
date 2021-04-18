//
//  CatalogDataRequest.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

struct CatalogDataRequest: Content {
    var page_number: Int
    var id_category: Int
}
