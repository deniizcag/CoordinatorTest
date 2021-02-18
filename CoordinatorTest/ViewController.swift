//
//  ViewController.swift
//  CoordinatorTest
//
//  Created by DenizCagilligecit on 18.02.2021.
//

import UIKit

class ViewController: UIViewController,Storyboarded {

    weak var coordinator: MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    

    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createTapped(_ sender: Any) {
        coordinator?.createAccount()
        
    }
    
}

