//
//  ViewController.swift
//  NSLayoutContrainstsExample
//
//  Created by Rahul Ranjan on 5/13/17.
//  Copyright © 2017 Rahul Ranjan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Testing out NSLayoutConstraints"
        label.backgroundColor = UIColor.blue
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false

        
        return label
    }()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(titleLabel)
        
        // view width
        let viewWidth = view.frame.width
        let titleLabelWidth = viewWidth + 100
        
        // Constraints: X, Y, Width, Height
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: titleLabelWidth).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
   
}

