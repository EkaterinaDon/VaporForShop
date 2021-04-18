//
//  CatalogController.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

class CatalogController {
    func catalogData(_ req: Request) throws -> EventLoopFuture<CatalogDataResponse> {
        guard let body = try? req.content.decode(CatalogDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = CatalogDataResponse(
            page_number: 1,
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func product(_ req: Request) throws -> EventLoopFuture<ProductResponse> {
        guard let body = try? req.content.decode(ProductRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ProductResponse(
            result: 1,
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
}
