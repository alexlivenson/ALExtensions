//
//  UIViewController+Extensions.swift
//  ALExtensions
//
//  Created by Alex Livenson on 4/23/18.
//  Copyright © 2018 Alex Livenson. All rights reserved.
//

import UIKit

public extension UIViewController {
    func addChild(viewCtrl: UIViewController) {
        addChild(viewCtrl: viewCtrl, to: view)
    }
    
    func addChild(viewCtrl: UIViewController, to subView: UIView) {
        addChildViewController(viewCtrl)
        viewCtrl.didMove(toParentViewController: self)
        subView.addSubview(viewCtrl.view)
    }
    
    func addAndFillChild(viewCtrl: UIViewController, to subView: UIView) {
        addChildViewController(viewCtrl)
        viewCtrl.didMove(toParentViewController: self)
        subView.addSubview(viewCtrl.view)
        viewCtrl.view.translatesAutoresizingMaskIntoConstraints = false
        viewCtrl.view.fillToParent()
    }
    
    func removeChild(viewCtrl: UIViewController) {
        viewCtrl.willMove(toParentViewController: nil)
        viewCtrl.view.removeFromSuperview()
        viewCtrl.removeFromParentViewController()
    }
}
