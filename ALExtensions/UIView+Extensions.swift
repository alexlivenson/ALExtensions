//
//  UIView+Extensions.swift
//  ALExtensions
//
//  Created by Alex Livenson on 4/23/18.
//  Copyright © 2018 Alex Livenson. All rights reserved.
//

import UIKit

public extension UIView {
    func fillToParent() {
        guard let sv = superview else {
            fatalError("Add this view to a parent")
        }
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sv.topAnchor.constraint(equalTo: topAnchor),
            sv.leftAnchor.constraint(equalTo: leftAnchor),
            sv.rightAnchor.constraint(equalTo: rightAnchor),
            sv.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
    }
}
