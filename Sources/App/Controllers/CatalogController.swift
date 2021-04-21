//
//  CatalogController.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

class CatalogController {
    func catalogData(_ req: Request) throws -> EventLoopFuture<[CatalogDataResponse]> {
        guard let body = try? req.content.decode(CatalogDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = [CatalogDataResponse(
                            id_product: 123,
                            product_name: "Смартфон",
                            price: 1000,
                            user_message: "Каталог получен",
                            error_message: nil)]
            
        return req.eventLoop.future(response)
    }
    
    func product(_ req: Request) throws -> EventLoopFuture<ProductResponse> {
        guard let body = try? req.content.decode(ProductRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ProductResponse(
            result: 1,
            product_name: "Мышка",
            product_price: 750,
            product_description: "Мышка",
            user_message: "Информация о товаре получена",
            error_message: nil)
        
        return req.eventLoop.future(response)
    }
}
