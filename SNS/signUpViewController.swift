import UIKit
import NCMB

class signUpViewController: UIViewController {

    @IBOutlet var userMailTextField: UITextField!
    @IBOutlet var userPassTextField: UITextField!
    @IBOutlet var userconfirmTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signUp(){
        let user = NCMBUser()
        user.signUpInBackground { (error) in
            user.mailAddress = self.userMailTextField.text
            user.password = self.userPassTextField.text
        }
    }
    

}
