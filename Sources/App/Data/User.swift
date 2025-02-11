//
//  User.swift
//  SimkeServerWithVapor
//
//  Created by Vladislav Simovic on 11.2.25..
//

import Vapor

struct UserRequest: Content {
    let id: String
}

struct UserResponse: Content {
    let firstName: String
    let lastName: String
    let age: Int
}

enum UserError: String, Error {
    case noUserWithId = "No user with provided id"
}

