//
//  NibType.swift
//  ALExtensions
//
//  Created by Alex Livenson on 6/16/17.
//  Copyright © 2017 Alex Livenson. All rights reserved.
//

import Foundation

public protocol NibType {
    static var nib: UINib { get }
}

public extension NibType {
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
}
