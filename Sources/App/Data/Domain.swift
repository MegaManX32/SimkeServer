//
//  Domain.swift
//  SimkeServerWithVapor
//
//  Created by Vladislav Simovic on 12.2.25..
//

import Vapor

private let blockedDomains = [
    "www.b92.net",
    "https://www.b92.net",
    "b92",
    "b92.net",
    "www.blic.rs"
]

struct DomainRequest: Content {
    let name: String
}

struct DomainResponse: Content {
    let result: Bool
    
    init(name: String) {
        self.result = blockedDomains.contains(name)
    }
}
