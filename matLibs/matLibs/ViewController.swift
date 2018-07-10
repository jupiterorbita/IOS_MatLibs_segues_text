//
//  ViewController.swift
//  matLibs
//
//  Created by J on 7/09/2018.
//  Copyright © 2018 Jman. All rights reserved.
//
// ======= VIEW CONTROLLER =========

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    var outputAdj: String?
    var outputVerb1: String?
    var outputVerb2: String?
    var outputVerb3: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = "..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func newButtonClicked(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "modalSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! OtherViewController
    }
    
    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {
        print("in unwindToViewContoller action")
        let src = segue.source as! OtherViewController
        outputAdj = src.adjective.text
        outputVerb1 = src.verb1.text
        outputVerb2 = src.verb2.text
        outputVerb3 = src.verb3.text
        print(outputAdj!, outputVerb1!, outputVerb2!, outputVerb3!)
        outputLabel.text = "We are having a prefectly _\(outputAdj!)_ time now. Later we will _\(outputVerb1!)_ and _\(outputVerb2!)_ in the _\(outputVerb3!)_!"
    }
    
}

