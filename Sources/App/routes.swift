import Vapor

func routes(_ app: Application) throws {
    let authController = AuthController()
    let catalogController = CatalogController()
        app.post("register", use: authController.register)
        app.post("login", use: authController.auth)
        app.post("logout", use: authController.logout)
        app.post("changeUserData", use: authController.changeUserData)
    
        app.post("catalogData", use: catalogController.catalogData)
        app.post("product", use: catalogController.product)
    
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}
