import Vapor

func routes(_ app: Application) throws {
    let authController = AuthController()
    let catalogController = CatalogController()
    let reviewController = ReviewController()
    let basketController = BasketController()
    
    app.post("register", use: authController.register)
    app.post("login", use: authController.auth)
    app.post("logout", use: authController.logout)
    app.post("changeUserData", use: authController.changeUserData)
    
    app.post("catalogData", use: catalogController.catalogData)
    app.post("product", use: catalogController.product)
    
    app.post("addReview", use: reviewController.addReview)
    app.post("removeReview", use: reviewController.removeReview)
    app.post("reviews", use: reviewController.allReviews)
    
    app.post("addToBasket", use: basketController.addToBasket)
    app.post("removeFromBasket", use: basketController.removeFromBasket)
    app.post("payBasket", use: basketController.payBasket)
    
    app.get { req in
        return "It works!"
    }
    
    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}
