//
//  UIResponder+Extension.swift
//  tip-calculator
//
//  Created by Hyunwoo Jeon on 2/21/24.
//

import UIKit

extension UIResponder {
    var parentViewController: UIViewController? {
        return next as? UIViewController ?? next?.parentViewController
    }
}
