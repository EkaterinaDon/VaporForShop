//
//  ReviewController.swift
//  
//
//  Created by Ekaterina on 21.04.21.
//

import Foundation
import Vapor

class ReviewController {
    func allReviews(_ req: Request) throws -> EventLoopFuture<ReviewsResponse> {
        guard let body = try? req.content.decode(ReviewsRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ReviewsResponse(
            page_number: 1,
            max_rows_count: 10,
            reviews: [Review(
                id_product: 123,
                id_user: 1,
                user_name: "Админ",
                text: "Отзыв")],
            user_message: "Список отзывов получен",
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func addReview(_ req: Request) throws -> EventLoopFuture<AddReviewResponse> {
        guard let body = try? req.content.decode(AddReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = AddReviewResponse(
            result: 1,
            user_message: "Отзыв добавлен!",
            error_message: nil)
        
        return req.eventLoop.future(response)
    }
    
    func removeReview(_ req: Request) throws -> EventLoopFuture<RemoveReviewResponse> {
        guard let body = try? req.content.decode(RemoveReviewRequest.self) else {
            throw Abort(.badRequest)
        }

        print(body)

        let response = RemoveReviewResponse(
            result: 1,
            user_message: "Отзыв удален!",
            error_message: nil
        )

        return req.eventLoop.future(response)
    }
}
