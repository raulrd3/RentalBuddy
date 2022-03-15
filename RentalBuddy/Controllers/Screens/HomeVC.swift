//
//  HomeVC.swift
//  RentalBuddy
//
//  Created by Raul Rodriguez III on 3/14/22.
//

import UIKit

class HomeVC: UIViewController {
    let testButton = SNButton(backgroundColor: .green, title: "Test", systemImageName: "testtube.2")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        configTestButton()
    }
    
    func configTestButton(){
        view.addSubview(testButton)
        testButton.addTarget(self, action: #selector(pushTapped), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            testButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            testButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            testButton.heightAnchor.constraint(equalToConstant: 50.0),
            testButton.widthAnchor.constraint(equalToConstant: 100.0)
        ])
    }
    
    @objc func pushTapped(_ sender: UIButton) {
        print("push tapped")
        navigationController?.pushViewController(TestVC(), animated: true)
    }
}
