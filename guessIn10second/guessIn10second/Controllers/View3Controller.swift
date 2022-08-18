//
//  View3Controller.swift
//  guessIn10second
//
//  Created by Macbook Air on 17.08.2022.
//

import UIKit
import AVFoundation



class View3Controller: UIViewController {

    
    var player: AVAudioPlayer!
     
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var answerCorrect: UIButton!
    
    @IBOutlet weak var answerIncorect: UIButton!
    
    var defaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        answerCorrect.isHidden = true
        answerIncorect.isHidden = true
        if let task = defaults.string(forKey: "task") {
        questionLabel.text = "Назвіть 5 \(task)"
        }
        if let image = defaults.string(forKey: "image") {
        imageView.image = UIImage(named: image)
        }
        
                                  timerLabel.text = ""
        let time: Int = 6
        for number in 1...time {
            Timer.scheduledTimer(withTimeInterval: 1 * Double(number), repeats: false) { (timer) in
                self.timerLabel.text = "< \(time-number) >"
            }
        }
        
        Timer.scheduledTimer(withTimeInterval: Double(time), repeats: false) { (timer) in
            self.answerCorrect.isHidden = false
            self.answerIncorect.isHidden = false
            self.playSound()
            self.timerLabel.text = "ЧАС ВИЙШОВ"
            
        }
    }

    @IBAction func pressedCorrect(_ sender: UIButton) {
    defaults.set(1, forKey: "point")
        self.presentingViewController?.viewDidLoad()
        dismiss(animated: true, completion: nil)
      
    }
    
    @IBAction func pressedIncorect(_ sender: UIButton) {
        defaults.set(0, forKey: "point")
        self.presentingViewController?.viewDidLoad()
        dismiss(animated: true, completion: nil)
        
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "ending", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
