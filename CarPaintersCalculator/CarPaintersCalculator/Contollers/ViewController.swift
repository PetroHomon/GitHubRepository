//
//  ViewController.swift
//  CarPaintersCalculator
//
//  Created by Macbook Air on 13.08.2022.
//

import UIKit
import IQKeyboardManagerSwift

class ViewController: UIViewController {

    @IBOutlet weak var krug: UITextField!
    @IBOutlet weak var shpak: UITextField!
    @IBOutlet weak var grunt: UITextField!
    @IBOutlet weak var obez: UITextField!
    @IBOutlet weak var farba: UITextField!
    @IBOutlet weak var lak: UITextField!
    @IBOutlet weak var pasta: UITextField!
    @IBOutlet weak var dolar: UITextField!
    
    
    
    
    @IBOutlet weak var krugPrice: UITextField!
    @IBOutlet weak var shpakPrice: UITextField!
    @IBOutlet weak var gruntPrice: UITextField!
    @IBOutlet weak var obezPrice: UITextField!
    @IBOutlet weak var farbaPrice: UITextField!
    @IBOutlet weak var lakPrice: UITextField!
    @IBOutlet weak var pastaPrice: UITextField!
    @IBOutlet weak var dolarPrice: UITextField!
    
    var materialsCost:Double = 0
    var cashInDolars:Double = 0
    var cashInUa:Double = 0
    
    var prices = Prises()
    var defaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if defaults.double(forKey: "krug") != 0 {
            prices.krug = defaults.double(forKey: "krug")
        } else {
            defaults.set(prices.krug, forKey: "krug")
        }
        
        if defaults.double(forKey: "shpak") != 0 {
            prices.shpak = defaults.double(forKey: "shpak")
        } else {
            defaults.set(prices.shpak, forKey: "shpak")
            }
        
        if defaults.double(forKey: "grunt") != 0 {
            prices.grunt = defaults.double(forKey: "grunt")
        } else {
            defaults.set(prices.grunt, forKey: "grunt")
            }
        
        if defaults.double(forKey: "obez") != 0 {
            prices.obez = defaults.double(forKey: "obez")
        } else {
            defaults.set(prices.obez, forKey: "obez")
            }
        
        if defaults.double(forKey: "farba") != 0 {
            prices.farba = defaults.double(forKey: "farba")
        } else {
            defaults.set(prices.farba, forKey: "farba")
            }
        
        if defaults.double(forKey: "lak") != 0 {
            prices.lak = defaults.double(forKey: "lak")
        } else {
            defaults.set(prices.lak, forKey: "lak")
            }
        
        if defaults.double(forKey: "pasta") != 0 {
            prices.pasta = defaults.double(forKey: "pasta")
        } else {
            defaults.set(prices.pasta, forKey: "pasta")
            }
        
        if defaults.double(forKey: "dolar") != 0 {
            prices.dolar = defaults.double(forKey: "dolar")
        } else {
            defaults.set(prices.dolar, forKey: "dolar")
            }
        
        krugPrice.placeholder = String(format: "%.2f", defaults.double(forKey: "krug"))
        shpakPrice.placeholder = String(format: "%.2f", defaults.double(forKey: "shpak"))
        gruntPrice.placeholder = String(format: "%.2f", defaults.double(forKey: "grunt"))
        obezPrice.placeholder = String(format: "%.2f", defaults.double(forKey: "obez"))
        farbaPrice.placeholder = String(format: "%.2f", defaults.double(forKey: "farba"))
        lakPrice.placeholder = String(format: "%.2f", defaults.double(forKey: "lak"))
        pastaPrice.placeholder = String(format: "%.2f", defaults.double(forKey: "pasta"))
        dolarPrice.placeholder = String(format: "%.2f", defaults.double(forKey: "dolar"))
    }


    @IBAction func calculatpressed(_ sender: UIButton) {
        
        if let krugPriceText = krugPrice.text {
            if let krugPrice = Double(krugPriceText) {
                prices.krug = krugPrice
                defaults.set(krugPrice, forKey: "krug")
            }
        }
        
        if let shpakPriceText = shpakPrice.text {
            if let shpakPrice = Double(shpakPriceText) {
                prices.shpak = shpakPrice
                defaults.set(shpakPrice, forKey: "shpak")
            }
        }
        
        if let gruntPriceText = gruntPrice.text {
            if let gruntPrice = Double(gruntPriceText) {
                prices.grunt = gruntPrice
                defaults.set(gruntPrice, forKey: "grunt")
            }
        }
        
        if let obezPriceText = obezPrice.text {
            if let obezPrice = Double(obezPriceText) {
                prices.obez = obezPrice
                defaults.set(obezPrice, forKey: "obez")
            }
        }
        
        if let farbaPriceText = farbaPrice.text {
            if let farbaPrice = Double(farbaPriceText) {
                prices.farba = farbaPrice
                defaults.set(farbaPrice, forKey: "farba")
            }
        }
        
        if let lakPriceText = lakPrice.text {
            if let lakPrice = Double(lakPriceText) {
                prices.lak = lakPrice
                defaults.set(lakPrice, forKey: "lak")
            }
        }
        
        if let pastaPriceText = pastaPrice.text {
            if let pastaPrice = Double(pastaPriceText) {
                prices.pasta = pastaPrice
                defaults.set(pastaPrice, forKey: "pasta")
            }
        }
        
        if let dolarPriceText = dolarPrice.text {
            if let dolarPrice = Double(dolarPriceText) {
                prices.dolar = dolarPrice
                defaults.set(dolarPrice, forKey: "dolar")
            }
        }
        
        
        
        
        if let krugText = krug.text {
            if let krug = Double(krugText) {
                prices.krugRezult = krug * prices.krug
            } else {
                prices.krugRezult = 0
            }
        } else {
            prices.krugRezult = 0
        }
        
        if let gruntText = grunt.text {
            if let grunt = Double(gruntText) {
                prices.gruntRezult = grunt * prices.grunt / 1000
            } else {
                prices.gruntRezult = 0
            }
        } else {
            prices.gruntRezult = 0
        }
        
        if let shpakText = shpak.text {
            if let shpak = Double(shpakText) {
                prices.shpakRezult = shpak * prices.shpak / 1000
            } else {
                prices.shpakRezult = 0
            }
        } else {
            prices.shpakRezult = 0
        }
        
        if let obezText = obez.text {
            if let obez = Double(obezText) {
                prices.obezRezult = obez * prices.obez / 1000
            } else {
                prices.obezRezult = 0
            }
        } else {
            prices.obezRezult = 0
        }
        
        if let farbaText = farba.text {
            if let farba = Double(farbaText) {
                prices.farbaRezult = farba * prices.farba / 1000
            } else {
                prices.farbaRezult = 0
            }
        } else {
            prices.farbaRezult = 0
        }
        
        if let lakText = lak.text {
            if let lak = Double(lakText) {
                prices.lakRezult = lak * prices.lak / 1000
            } else {
                prices.lakRezult = 0
            }
        } else {
            prices.lakRezult = 0
        }
        
        if let pastaText = pasta.text {
            if let pasta = Double(pastaText) {
                prices.pastaRezult = pasta * prices.pasta / 1000
            } else {
                prices.pastaRezult = 0
            }
        } else {
            prices.pastaRezult = 0
        }
        
        if let dolarText = dolar.text {
            if let dolar = Double(dolarText) {
                prices.dolarRezult = dolar * prices.dolar
            } else {
                prices.dolarRezult = 0
            }
        } else {
            prices.dolarRezult = 0
        }
        
        materialsCost = prices.krugRezult + prices.shpakRezult + prices.gruntRezult + prices.obezRezult + prices.farbaRezult + prices.lakRezult + prices.pastaRezult
        
        cashInDolars = ( prices.dolarRezult - materialsCost ) / prices.dolar
        
        cashInUa = prices.dolarRezult - materialsCost
        
        self.performSegue(withIdentifier: "GoToResults", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToResults" {
            let destinatioVC = segue.destination as! ResultsController
            destinatioVC.moneyMater = self.materialsCost
            destinatioVC.moneyDolar = self.cashInDolars
            destinatioVC.moneyUa = self.cashInUa
           
        }
    }
    
}

