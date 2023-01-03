//
//  AppError.swift
//  Demo
//
//  Created by Mac on 02/01/2023.
//

import Foundation

public enum AppError: Error {
    case unexpected
    case errorMessage(msg: String)
}

extension AppError: LocalizedError {
    
    var description: String {
        switch self {
        case .unexpected:
            return "Something unexpected happened"
        case .errorMessage(let msg):
            return msg
        }
    }
    
}
