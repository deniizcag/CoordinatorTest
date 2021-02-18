//
//  BuyCoordinator.swift
//  CoordinatorTest
//
//  Created by DenizCagilligecit on 18.02.2021.
//

import UIKit

class BuyCoordinator: Coordinator {
    var children: [Coordinator] = []
    weak var parentCoordinator: MainCoordinator?
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
//    func didFinishBuying() {
//        parentCoordinator?.childDidFinish(child: self)
//    }
    
}
