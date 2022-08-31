//
//  ViewController.swift
//  delegatePriklad
//
//  Created by Macbook Air on 11.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    let VC = ViewController2()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        VC.changeVC1delegate = self
    }

    @IBAction func toView2(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToVC2", sender: self)
        
    }
}

extension ViewController: ChangeVC1Delegate {
    func ChangeLabel(labelText: String) {
        label.text = labelText
    }
    
    
}
