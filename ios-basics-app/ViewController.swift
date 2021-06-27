import UIKit

class ViewController: UIViewController {
    
    // change label after button event
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton! // technically dont need this if sender is described explicitly
    @IBAction func myAction(_ sender: UIButton) {
        myLabel.text = "Section 1"
        sender.backgroundColor = UIColor.red
        sender.setTitleColor(UIColor.white, for: UIControl.State.normal)
    }
    
    // change image after button event
    @IBOutlet weak var imageView:
        UIImageView!
    @IBAction func changeImageButton(_ sender: UIButton) {
        imageView.image = UIImage (named: "meme2.jpg")
        sender.backgroundColor = UIColor.red
        sender.setTitleColor(UIColor.white, for: UIControl.State.normal)
    }
    
    // switch functionality example
    @IBOutlet weak var someSwitch: UISwitch!
    @IBOutlet weak var labelSwitch: UILabel!
    @IBAction func changeSwitch(_ sender: UISwitch) {
        // control flow
        if sender.isOn {
            labelSwitch.text = "on"
        } else {
            labelSwitch.text = "off"
        }
    }
    
    // change label according to text field after button event
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var sayHiLabel: UILabel!
    @IBAction func sayHiButton(_ sender: UIButton) {
        sayHiLabel.text = "hi " + inputText.text!
        sender.backgroundColor = UIColor.red
        sender.setTitleColor(UIColor.white, for: UIControl.State.normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print ("print on load")
        
        if someSwitch.isOn {
            labelSwitch.text = "on"
        } else {
            labelSwitch.text = "off"
        }
    }


}

