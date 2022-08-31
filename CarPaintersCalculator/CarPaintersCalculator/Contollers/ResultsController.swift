//
//  ResultsController.swift
//  CarPaintersCalculator
//
//  Created by Macbook Air on 13.08.2022.
//

import UIKit
import IQKeyboardManagerSwift

class ResultsController: UIViewController {

    @IBOutlet weak var materLabel: UILabel!
    @IBOutlet weak var moneyDolarLabel: UILabel!
    @IBOutlet weak var moneyUaLaber: UILabel!
    
    var moneyMater: Double?
    var moneyDolar: Double?
    var moneyUa: Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        materLabel.text = "Матеріали: \(String(format: "%.2f", moneyMater! ) )"
        
        moneyDolarLabel.text = "Заробіток в доларах: \(String(format: "%.2f", moneyDolar!) )"
        
        moneyUaLaber.text = "Заробіток в гривнях: \(String(format: "%.2f", moneyUa!) )"
    }
    

    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
