import Vapor

func routes(_ app: Application) throws {
    let controller = AuthController()
        app.post("register", use: controller.register)
    
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}
