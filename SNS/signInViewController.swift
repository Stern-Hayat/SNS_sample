
import UIKit
import NCMB

class signInViewController: UIViewController {

    @IBOutlet var userMailTextField: UITextField!
    @IBOutlet var userPassTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login(){
        
        NCMBUser.logInWithMailAddress(inBackground: self.userMailTextField.text, password: self.userPassTextField.text) { (user, error) in
            
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let next: UIViewController = storyboard.instantiateInitialViewController() as! timeLineViewController
            self.present(next, animated: true, completion: nil)
        }
    }

}
