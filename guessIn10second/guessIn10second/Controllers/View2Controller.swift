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
    let controller = View3Controller()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.dataSource = self
        controller.delegate = self
        
        if let results = playersResults {
            appBrain.sendHowManyPlayers(results.count-1)
         }
        player = appBrain.getPlayer()
        playerReadyLabel.text = "Гравцю \(playersResults![player].name) приготуватися"
        
        defaults.set(0, forKey: "point")
    }
    
    
    

    
    
    
    @IBAction func pressedStart(_ sender: UIButton) {
        self.task = appBrain.loadQuestTask()
        self.image = appBrain.loadQuestImage()
        self.performSegue(withIdentifier: "GoToThird", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToThird" {
            let destinatioVC = segue.destination as! View3Controller
            destinatioVC.playerTask = task
            destinatioVC.playerImage = image
        }
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

extension View2Controller: View2ControllerDelegate {
    func retturnAfterView3() {
        print("Delegate methods works")
    }
    
    
}
