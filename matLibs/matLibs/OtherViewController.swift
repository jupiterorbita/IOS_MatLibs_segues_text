//
//  OtherViewController.swift
//  matLibs
//
//  Created by J on 7/09/2018.
//  Copyright © 2018 Jman. All rights reserved.
//
// ====== O T H E R  VIEW CONTROLLER =========

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var adjective: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var verb2: UITextField!
    @IBOutlet weak var verb3: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func submitPressed(_ sender: UIButton) {
        let adj = adjective.text
        let vb1 = verb1.text
        let vb2 = verb2.text
        let vb3 = verb3.text
        performSegue(withIdentifier: "backSegue", sender: nil)
    }
    
}
