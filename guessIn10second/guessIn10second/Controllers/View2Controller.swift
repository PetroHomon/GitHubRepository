//
//  View2Controller.swift
//  guessIn10second
//
//  Created by Macbook Air on 16.08.2022.




import UIKit



class View2Controller: UIViewController {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var playerReadyLabel: UILabel!
    
    var playersResults: [PlayersBase]?
    
    var appBrain = AppBrain()
    
    var defaults = UserDefaults.standard
    
    var player = 0
    var task = ""
    var image = ""
    var gameBegin = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.dataSource = self

        if let results = playersResults {
             appBrain.sendHowManyPlayers(results.count-1)
          }
        
        if gameBegin {
            playersResults![player].points += defaults.integer(forKey: "point")
        }
        
        player = appBrain.getPlayer()
        print(player)
        playerReadyLabel.text = "Гравцю \(playersResults![player].name) приготуватися"
        defaults.set(0, forKey: "point")
        
        
        
        gameBegin = true
        print("VIEWDIDLOAD")
        tableView.reloadData()
    }
    
    
    

    
    
    
    @IBAction func pressedStart(_ sender: UIButton) {
        defaults.set(appBrain.loadQuestTask(), forKey: "task")
        defaults.set(appBrain.loadQuestImage(), forKey: "image")
        
        
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "thirdVC") as? View3Controller else {
            print("problem with load VC2")
            return
            }
        vc.modalPresentationStyle = .fullScreen
    present(vc, animated: false)
        }
}
    


extension View2Controller: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playersResults!.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(playersResults![indexPath.row].name):   \(playersResults![indexPath.row].points)"
        return cell
    }
}
