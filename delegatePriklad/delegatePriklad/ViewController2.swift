
import UIKit
protocol ChangeVC1Delegate {
    func ChangeLabel(labelText:String)
}



class ViewController2: UIViewController {

    var changeVC1delegate: ChangeVC1Delegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func changePressed(_ sender: UIButton) {
        changeVC1delegate.ChangeLabel(labelText: "Кнопка нажата")
    }
    
    @IBAction func toView1(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
    

}
