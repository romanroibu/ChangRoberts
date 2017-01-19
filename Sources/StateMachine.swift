//
//  StateMachine.swift
//  ChangRoberts
//
//  Created by Roman Roibu on 13/10/2016.
//  Copyright © 2017 Roman Roibu. All rights reserved.
//

/// See: https://gist.github.com/andymatuschak/d5f0a8730ad601bcccae97e8398e25b2
public protocol StateMachine {
    associatedtype State
    associatedtype Effect

    var state: State { get }

    init(initial: State) throws

    func start() throws -> Effect
    func transition(to: State) throws -> Effect
}
