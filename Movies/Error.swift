//
//  Error.swift
//  Movies
//
//  Created by Asadbek Mamutov on 06/01/26.
//

import Foundation

enum APIConfigError: Error, LocalizedError {
    case fileNotFound
    case dataLoadingFailed(underlyingError: Error)
    case decodingFailed(underlyingError: Error)
    
    var errorDescription: String? {
        switch self {
        case .fileNotFound:
            return "API configuration file not found"
        case  .dataLoadingFailed(underlyingError: let error):
            return "Data loading failed: \(error.localizedDescription)"
        case .decodingFailed(underlyingError: let error):
            return "Decoding failed: \(error.localizedDescription)"
        }
    }
}

enum NetworkError: Error, LocalizedError {
    case badURLResponse(underlyingError: Error)
    case missingConfig
    case urlBuildFailed
    
    var errorDescription: String? {
        switch self {
        case .badURLResponse(underlyingError: let error):
            return "Failed parse to URL response: \(error.localizedDescription)"
        case .missingConfig:
            return "Missing API configuration"
        case .urlBuildFailed:
            return "Failed to build URL."
        }
    }
}
