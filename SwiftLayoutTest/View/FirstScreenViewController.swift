//
//  ViewController.swift
//  SwiftLayoutTest
//
//  Created by Камиль Хакимов on 25.12.2022.
//

import UIKit

class FirstScreenViewController: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "FirstScreen"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupView()
    }
    
    func setupView() {
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemBlue
        nextButton.configuration?.title = "Next"
        
        nextButton.addTarget(self, action: #selector(goToNextViewController), for: .touchUpInside )
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([ 
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func goToNextViewController() {
        let nextViewController = SecondScreenViewController()
        nextViewController.title = "SecondScreen"
        navigationController?.pushViewController(nextViewController, animated: true)
    }
}

