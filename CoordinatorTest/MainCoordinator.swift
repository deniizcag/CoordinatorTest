//
//  MainCoordinator.swift
//  CoordinatorTest
//
//  Created by DenizCagilligecit on 18.02.2021.
//

import UIKit

class MainCoordinator: Coordinator {
    var children = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
        
    }
    func buySubscription() {
        let child = BuyCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        children.append(child)
        child.start()
        
    }

    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    func childDidFinish(child: Coordinator? ) {
        for (index, coordinator) in children.enumerated() {
            if coordinator === child {
                children.remove(at: index)
                break
            }
        }
        
    }
    
    
}
