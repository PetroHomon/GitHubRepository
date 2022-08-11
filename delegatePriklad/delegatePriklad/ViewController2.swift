protocol labelDelegate {
    func changeLabel ()
}

import UIKit

class ViewController2: UIViewController {

    var delegate: labelDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func changePressed(_ sender: UIButton) {
    
        delegate?.changeLabel()
        
    }
    
    @IBAction func toView1(_ sender: UIButton) {
        self.performSegue(withIdentifier: "GoToView1", sender: self)
    }
    

}
