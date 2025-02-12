import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.post("user") { req async throws -> UserResponse in
        let request = try req.content.decode(UserRequest.self)
        if request.id == "22" {
            return UserResponse(firstName: "Vladislav", lastName: "Simovic", age: 40)
        } else {
            throw UserError.noUserWithId
        }
    }
    
    app.post("domain") { req async throws -> DomainResponse in
        let request = try req.content.decode(DomainRequest.self)
        return DomainResponse(name: request.name)
    }
}
