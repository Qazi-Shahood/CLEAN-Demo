//
//  Constants.swift
//  Demo
//
//  Created by Mac on 02/01/2023.
//

import Foundation

public typealias DTO = Codable

class Constants {
    static let baseURL = "https://jsonplaceholder.typicode.com/"
}

enum Endpoints : String {
    case Post = "posts"
}
