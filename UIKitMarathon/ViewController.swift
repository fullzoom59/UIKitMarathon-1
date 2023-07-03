//
//  ViewController.swift
//  UIKitMarathon
//
//  Created by fullzoom on 03.07.2023.
//

import UIKit

class ViewController: UIViewController {

    // Create View + shadow
    let gradientView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: 6, height: 6)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(gradientView)
        setConstaints()
    }
    // Create Gradient View
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
            
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [UIColor.systemGreen.cgColor, UIColor.systemPurple.cgColor]
        gradientLayer.cornerRadius = gradientView.layer.cornerRadius
        gradientView.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    // Add Constaints
    func setConstaints(){
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            gradientView.widthAnchor.constraint(equalToConstant: 100),
            gradientView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

