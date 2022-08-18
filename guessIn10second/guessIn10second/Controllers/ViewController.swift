//
//  ViewController.swift
//  guessIn10second
//
//  Created by Macbook Air on 16.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var tableView: UITableView!
    

    var playersBase: [PlayersBase] = [PlayersBase(name: "Viniamin", points: 0)]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }

    @IBAction func swipe(_ sender: UISwipeGestureRecognizer) {
    }
    
    @IBAction func gameStart(_ sender: UIButton) {
        self.performSegue(withIdentifier: "GoToSecond", sender: self)
     }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSecond" {
            let destinatioVC = segue.destination as! View2Controller
            destinatioVC.playersResults = playersBase
        }
    }
    
    func savePlayer(nameOfPlayer: String) {
        print(nameOfPlayer)
        playersBase.append(PlayersBase(name: nameOfPlayer, points: 0))
        tableView.reloadData()
    }
 
    @IBAction func addPlayerButton(_ sender: UIButton) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Введіть ім'я гравця:", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Додати гравця", style: .default) { action in
        if let textFromField = textField.text {
            self.savePlayer(nameOfPlayer: textFromField)
        } else { print("Problems with open text form textField")}
        }
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Вініамін"
            textField = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    
}



extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playersBase.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTable", for: indexPath)
        cell.textLabel?.text = playersBase[indexPath.row].name
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        playersBase.remove(at: indexPath.row)
        
        tableView.deselectRow(at: indexPath, animated: true)
        tableView.reloadData()
    }
}
