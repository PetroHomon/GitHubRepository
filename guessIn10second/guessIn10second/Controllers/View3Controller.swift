//
//  View3Controller.swift
//  guessIn10second
//
//  Created by Macbook Air on 17.08.2022.
//

import UIKit
import AVFoundation

protocol View2ControllerDelegate {
    func retturnAfterView3()
}

class View3Controller: UIViewController {

    var delegate: View2ControllerDelegate?
    var player: AVAudioPlayer!
     
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var answerCorrect: UIButton!
    
    @IBOutlet weak var answerIncorect: UIButton!
    
    var defaults = UserDefaults.standard
    
    var playerTask: String?
    var playerImage: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        answerCorrect.isHidden = true
        answerIncorect.isHidden = true
        if let task2 = playerTask {
        questionLabel.text = "Назвіть 5 \(task2)"
        
        }
        
        timerLabel.text = ""
        for number in 1...11 {
            Timer.scheduledTimer(withTimeInterval: 1 * Double(number), repeats: false) { (timer) in
                self.timerLabel.text = "< \(11-number) >"
            }
        }
        Timer.scheduledTimer(withTimeInterval: 11, repeats: false) { (timer) in
            self.answerCorrect.isHidden = false
            self.answerIncorect.isHidden = false
            self.playSound()
            self.timerLabel.text = "ЧАС ВИЙШОВ"
            
        }
    }

    @IBAction func pressedCorrect(_ sender: UIButton) {
    defaults.set(1, forKey: "point")
    delegate?.retturnAfterView3()
    dismiss(animated: true, completion: nil)
      
    }
    
    @IBAction func pressedIncorect(_ sender: UIButton) {
        defaults.set(1, forKey: "point")
        delegate?.retturnAfterView3()
        dismiss(animated: true, completion: nil)
        
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "ending", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
