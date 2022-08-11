//
//  ViewController.swift
//  delegatePriklad
//
//  Created by Macbook Air on 11.08.2022.
//

import UIKit

class ViewController: UIViewController, labelDelegate {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toView2(_ sender: UIButton) {
        self.performSegue(withIdentifier: "GoToView2", sender: self)
    }
    
    func changeLabel() {
        label.text = "changed"
    }
    
    
}

