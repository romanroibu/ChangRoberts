//
//  DistributedAlgorithm.swift
//  ChangRoberts
//
//  Created by Roman Roibu on 13/10/2016.
//  Copyright © 2017 Roman Roibu. All rights reserved.
//

public protocol DistributedAlgorithm {
    associatedtype Message//: RawRepresentable
}

public protocol LeaderElection: DistributedAlgorithm, StateMachine {
    //TODO: Move to DistributedAlgorithm?
    func transition(with message: Message) throws -> (State, Effect)
}
