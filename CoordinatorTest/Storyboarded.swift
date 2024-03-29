//
//  Storyboarded.swift
//  CoordinatorTest
//
//  Created by DenizCagilligecit on 18.02.2021.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}
extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        
        let id = String(describing: self)
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}
