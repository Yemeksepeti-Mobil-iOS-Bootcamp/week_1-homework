//
//  ViewController.swift
//  Foodify
//
//  Created by Samed Biçer on 8.08.2021.
//

import UIKit
import FoodifyAPI

class ViewController: UIViewController {

    private let testView = ImageWithShadowView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        configure()
    }

    private func configure() {
        view.addSubview(testView)
        testView.translatesAutoresizingMaskIntoConstraints = false
        
        let model = ImageWithShadowViewUIModel(url: "chicken_meat_plate")
        testView.setup(with: model)
        
        NSLayoutConstraint.activate([
            testView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            testView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            testView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
        ])
    }

}

