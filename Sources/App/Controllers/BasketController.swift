//
//  BasketController.swift
//  
//
//  Created by Ekaterina on 25.04.21.
//

import Foundation
import Vapor

class BasketController {
    func addToBasket(_ req: Request) throws -> EventLoopFuture<AddToBasketResponse> {
        guard let body = try? req.content.decode(AddToBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = AddToBasketResponse(
            result: 1,
            user_message: "Товар добавлен в карзину!",
            error_message: nil)
        
        return req.eventLoop.future(response)
    }
    
    func removeFromBasket(_ req: Request) throws -> EventLoopFuture<RemoveFromBasketResponse> {
        guard let body = try? req.content.decode(RemoveFromBasketRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = RemoveFromBasketResponse(
            result: 1,
            user_message: "Товар удален из карзины!",
            error_message: nil
        )

        return req.eventLoop.future(response)
    }
    
    func payBasket(_ req: Request) throws -> EventLoopFuture<PayBasketResponse> {
        guard let body = try? req.content.decode(PayBasketRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = PayBasketResponse(
            result: 1,
            user_message: "Оплата прошла успешно!",
            error_message: nil
        )

        return req.eventLoop.future(response)
    }
}
