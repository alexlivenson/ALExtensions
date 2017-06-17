//
//  UICollectionView+Extensions.swift
//  ALExtensions
//
//  Created by Alex Livenson on 6/17/17.
//  Copyright © 2017 Alex Livenson. All rights reserved.
//

import Foundation

public extension UICollectionView {
    
    final func register<T: UICollectionViewCell>(cell: T.Type) where T: NibReusable {
        register(cell.nib, forCellWithReuseIdentifier: cell.reuseId)
    }
    
    final func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: NibReusable {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseId, for: indexPath) as? T else {
            fatalError(
                "Failed to dequeue a cell with identifier \(T.reuseId) matching type \(T.self)."
            )
        }
        return cell
    }
    
    final func register<T: UICollectionReusableView>(supplementaryView: T.Type, viewOfKind: String) where T: NibReusable {
        register(T.nib, forSupplementaryViewOfKind: viewOfKind, withReuseIdentifier: T.reuseId)
    }
    
    final func dequeueReusableSupplementaryView<T: UICollectionReusableView>(ofKind: String, for indexPath: IndexPath) -> T where T: NibReusable {
        guard let view = dequeueReusableSupplementaryView(ofKind: ofKind, withReuseIdentifier: T.reuseId, for: indexPath) as? T else {
            fatalError(
                "Failed to dequeue a supplementary with identifier \(T.reuseId) matching type \(T.self)."
            )
        }
        
        return view
    }
    
}
