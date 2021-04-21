//
//  AuthController.swift
//  
//
//  Created by Ekaterina on 18.04.21.
//

import Foundation
import Vapor

class AuthController {
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RegisterResponse(
            result: 1,
            user_message: "Регистрация прошла успешно!",
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func auth(_ req: Request) throws -> EventLoopFuture<AuthResponse> {
        guard let body = try? req.content.decode(AuthRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = AuthResponse(
            result: 1,
            user_message: "Авторизация прошла успешно!",
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LogoutResponse(
            result: 1,
            user_message: "Вы успешно вышли!",
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func changeUserData(_ req: Request) throws -> EventLoopFuture<ChangeUserDataResponse> {
        guard let body = try? req.content.decode(ChangeUserDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ChangeUserDataResponse(
            result: 1,
            user_message: "Изменения данных прошли успешно!",
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
}
