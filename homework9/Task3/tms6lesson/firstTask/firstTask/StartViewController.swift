//
//  StartViewController.swift
//  firstTask
//
//  Created by Stas Dashkevich on 20.03.21.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange
        
    }
    
    @IBAction func startButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let vc = storyboard.instantiateViewController(identifier: "ViewController") as? ViewController {
            present(vc, animated: true, completion: nil)
        }
    }
    
}
