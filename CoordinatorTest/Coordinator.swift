//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by DenizCagilligecit on 18.02.2021.
//

import UIKit

protocol Coordinator : AnyObject{
    var children: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
