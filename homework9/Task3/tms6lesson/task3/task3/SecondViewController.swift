//
//  SecondViewController.swift
//  task3
//
//  Created by Stas Dashkevich on 20.03.21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange
    }
    

    @IBAction func startButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let vc = storyboard.instantiateViewController(identifier: "SecondViewController") as? ViewController {
            present(vc, animated:true, completion: nil)
        }
    }
    
}
