//
//  SecondViewController.swift
//  hm9task1
//
//  Created by Stas Dashkevich on 19.03.21.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var welcomLabel: UILabel!
    
    @IBOutlet weak var yoLabel: UILabel!
    
    @IBOutlet weak var secondName: UILabel!
    @IBOutlet weak var yoTextField: UITextField!
    @IBOutlet weak var secondNameTextField: UITextField!
    //    var email: String = ""
    //    var secondNameText: String = ""
    @IBOutlet weak var nextButton: UIButton!
    var name: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "NightBG")!)
        welcomLabel.text = " Hi \(name)"
        secondName.text = "Write your second name"
        yoLabel.text = "Write your email"
        nextButton.layer.cornerRadius = 25
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func switchViewController(_ sender: UIButton) {
        if yoLabel.text == "" && secondNameTextField.text == "" {
            yoLabel.text = "you should write your email"
            secondName.text = "you should write your second name"
        } else {
            let storyboardv3 = UIStoryboard(name:"ThirdStoryboard", bundle: Bundle.main)
            if let vc3 = storyboardv3.instantiateViewController(identifier: "ThirdViewController") as? ThirdViewController {
                vc3.secondNameV3 = secondNameTextField.text!
                vc3.email = yoTextField.text!
                vc3.name = name
                present(vc3, animated: true, completion: nil)
            }
        }
    }
}
