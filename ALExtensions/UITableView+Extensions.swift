//
//  UITableView+Extensions.swift
//  ALExtensions
//
//  Created by Alex Livenson on 6/16/17.
//  Copyright © 2017 Alex Livenson. All rights reserved.
//

import UIKit

public extension UITableView {
    
    final func register<T: UITableViewCell>(cell: T.Type) where T: NibReusable {
        register(cell.nib, forCellReuseIdentifier: cell.reuseId)
    }
    
    final func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T where T: NibReusable {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseId, for: indexPath) as? T else {
            fatalError(
                "Failed to dequeue a cell with identifier \(T.reuseId) matching type \(T.self)."
            )
        }
        return cell
    }
    
    final func register<T: UITableViewHeaderFooterView>(view: T.Type) where T: NibReusable {
        register(view.nib, forHeaderFooterViewReuseIdentifier: view.reuseId)
    }
    
    
    final func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>(withIdentifier: String) -> T where T: NibReusable {
        guard let view = dequeueReusableHeaderFooterView(withIdentifier: withIdentifier) as? T else {
            fatalError(
                "Failed to dequeue a view with identifier \(T.reuseId) matching type \(T.self)."
            )
        }
        return view
    }
    
}
