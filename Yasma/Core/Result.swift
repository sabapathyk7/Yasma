//
//  Result.swift
//  Yasma
//
//  Created by kanagasabapathy on 10/08/18.
//  Copyright © 2018 kanagasabapathy. All rights reserved.
//

import Foundation


enum Result<T> {
    case success(T)
    case failure(Error)
    case notConnectedToInternet(Error)

    public func dematerialize() throws -> T {
        switch self {
        case let .success(value):
            return value
        case let .failure(error):
            throw error
        case let .notConnectedToInternet(connectionError):
            throw connectionError
        }
    }
}

