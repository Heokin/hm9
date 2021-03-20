//
//  FivesViewController.swift
//  hm9task1
//
//  Created by Stas Dashkevich on 19.03.21.
//

import UIKit

class FivesViewController: UIViewController {
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var secondNameV3: String = ""
    var email: String = ""
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "NightBG")!)
        infoLabel.text = "\(name) \(secondNameV3)"
        emailLabel.text = email
    }
    
    @IBAction func nextButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
