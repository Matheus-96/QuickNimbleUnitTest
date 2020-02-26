//
//  SecondViewController.swift
//  QN Test
//
//  Created by Matheus Rodrigues Araujo on 15/01/20.
//  Copyright © 2020 Curso IOS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var nome : String!
    var viewE = UIView(frame: CGRect(x: 200, y: 200, width: 50, height: 50))
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = nome
    }

}
