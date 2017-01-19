//
//  ChangRoberts.swift
//  ChangRoberts
//
//  Created by Roman Roibu on 13/10/2016.
//  Copyright © 2017 Roman Roibu. All rights reserved.
//

import Foundation

// swiftlint:disable type_name
public struct _ChangRobertsNode<I: UniqueIdentifier>: IdentifiableEntity {
    public let uid: I
    public let name: String
}

// swiftlint:disable type_name
public enum _ChangRobertsMessage<Node: IdentifiableEntity> {
    case elected(leader: Node)
    case election(proposed: Node)
}

// swiftlint:disable type_name
public enum _ChangRobertsState<Node: IdentifiableEntity> {
    case initial
    case started
    case participating
    case elected(leader: Node)
}

// swiftlint:disable type_name
public enum _ChangRobertsEffect<Node: IdentifiableEntity> {
    case proposedSelf
    case forwardNode
}

// swiftlint:disable type_name
public enum _ChangRobertsError<Node: IdentifiableEntity>: Swift.Error {
    case invalidTransition(from: _ChangRobertsState<Node>, to: _ChangRobertsState<Node>)
}

public final class ChangRoberts<Node: IdentifiableEntity>: LeaderElection {
    //TODO: When Swift allows declaring nested generic types,
    //TODO: move ChangRoberts* declarations inside ChangRoberts class decl
    public typealias State   = _ChangRobertsState<Node>
    public typealias Error   = _ChangRobertsError<Node>
    public typealias Effect  = _ChangRobertsEffect<Node>
    public typealias Message = _ChangRobertsMessage<Node>

    public private(set) var state: State

    public init(initial state: State) {
        self.state = state
    }

    public func start() throws -> Effect {
        return try self.transition(to: .started)
    }

    public func received(message: Message) -> Effect {
        let (state, effect) = self.transition(with: message)
        self.state = state
        return effect
    }

    //https://en.wikipedia.org/wiki/Chang_and_Roberts_algorithm
    public func transition(to state: State) throws -> Effect {
        switch (self.state, state) {
        case (.initial, .started):
            //TODO: Send neighbour signal that
            fatalError()
        case (.started, .participating):
            //TODO:
            fatalError()
        case (.participating, .participating):
            //TODO:
            fatalError()
        case (.participating, .elected(_)):
            //TODO:
            fatalError()
        case (.elected(_), .participating):
            //TODO:
            fatalError()
        case (.elected(_), .started):
            fallthrough //???
        default:
            throw Error.invalidTransition(from: self.state, to: state)
        }
    }

    public func transition(with message: Message) -> (State, Effect) {
        fatalError()
    }
}
