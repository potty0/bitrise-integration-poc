//
//  ViewController.swift
//  Bitrise-poc
//
//  Created by Peter Balint on 2020. 03. 30..
//  Copyright © 2020. Peter Balint. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    @IBOutlet private weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func testButtonPressed(sender: UIButton) {
        infoLabel.text = "Pressed!"
    }
}

