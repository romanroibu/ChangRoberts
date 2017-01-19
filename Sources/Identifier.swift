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
