//
//  Identifier.swift
//  ChangRoberts
//
//  Created by Roman Roibu on 13/10/2016.
//  Copyright © 2017 Roman Roibu. All rights reserved.
//

import Foundation

public protocol UniqueIdentifier: Comparable {}

public protocol IdentifiableEntity {
    associatedtype UID: UniqueIdentifier

    var uid: UID { get }
}

extension UUID: UniqueIdentifier {
    public static func < (lhs: UUID, rhs: UUID) -> Bool {
        return lhs.uuid < rhs.uuid
    }
}

public func < (lhs: uuid_t, rhs: uuid_t) -> Bool {
    return (lhs.0  < rhs.0)
        || (lhs.1  < rhs.1)
        || (lhs.2  < rhs.2)
        || (lhs.3  < rhs.3)
        || (lhs.4  < rhs.4)
        || (lhs.5  < rhs.5)
        || (lhs.6  < rhs.6)
        || (lhs.7  < rhs.7)
        || (lhs.8  < rhs.8)
        || (lhs.9  < rhs.9)
        || (lhs.10 < rhs.10)
        || (lhs.11 < rhs.11)
        || (lhs.12 < rhs.12)
        || (lhs.13 < rhs.13)
        || (lhs.14 < rhs.14)
        || (lhs.15 < rhs.15)
}
