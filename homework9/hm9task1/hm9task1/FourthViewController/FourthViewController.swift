//
//  FourthViewController.swift
//  hm9task1
//
//  Created by Stas Dashkevich on 19.03.21.
//

import UIKit

class FourthViewController: UIViewController {
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var secondNameV3: String = ""
    var email: String = ""
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "\(name) \(secondNameV3)"
        emailLabel.text = email
        view.backgroundColor = UIColor(patternImage: UIImage(named: "NightBG")!)
    }

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func nextButton(_ sender: Any) {
        let storyboardv5 = UIStoryboard(name: "FivesStoryboard", bundle: Bundle.main)
        if let vc5 = storyboardv5.instantiateViewController(identifier: "FivesViewController") as? FivesViewController {
            vc5.email = email
            vc5.name = name
            vc5.secondNameV3 = secondNameV3
            present(vc5, animated: true, completion: nil)
                
            }
            
        }
    }
    
