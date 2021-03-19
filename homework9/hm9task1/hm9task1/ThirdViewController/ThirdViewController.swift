//
//  ThirdViewController.swift
//  hm9task1
//
//  Created by Stas Dashkevich on 19.03.21.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    
    var secondNameV3: String = ""
    var email: String = ""
    var name: String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "NightBG")!)
        infoLabel.text = "\(email) \(secondNameV3) \(name)"
        sliderLabel.text = email
        
       
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        let storyboardV4 = UIStoryboard(name:"FourthStoryboard", bundle: Bundle.main)
        if let vc4 = storyboardV4.instantiateViewController(identifier: "FourthViewController") as? FourthViewController {
            vc4.email = email
            vc4.name = name
            vc4.secondNameV3 = secondNameV3
            present(vc4, animated: true, completion: nil)
    }
    }
    
}
