//
//  ViewController.swift
//  hm9task1
//
//  Created by Stas Dashkevich on 19.03.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var welcomLabel: UILabel!
    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var registerButtonUI: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var test: UITextField!
    var name: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "NightBG")!)
        registerButtonUI.tag = 1
        registerButtonUI.layer.cornerRadius = 25
    }
    
    @IBAction func nextButton(_ sender: Any) {
        name = test.text!
        if test.text == ""{
            welcomLabel.text = "U should write your name"
        } else {
            welcomLabel.text = "Hello \(test.text!)"
            registerLabel.text = "tap registration button"
        }
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        if test.text == "" {
            welcomLabel.text = "U should write your name"
        } else {
            let storyboard = UIStoryboard(name:"SecondStoryboard", bundle: Bundle.main)
            if let vc2 = storyboard.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
                vc2.name = test.text!
                present(vc2, animated: true, completion: nil)
            }
        }
    }
}
