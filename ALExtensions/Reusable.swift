//
//  Reusable.swift
//  ALExtensions
//
//  Created by Alex Livenson on 6/16/17.
//  Copyright © 2017 Alex Livenson. All rights reserved.
//

import Foundation

public protocol Reusable {
    static var reuseId: String { get }
}

public extension Reusable {
    static var reuseId: String {
        return String(describing: self)
    }        
}

public typealias NibReusable = NibType & Reusable
