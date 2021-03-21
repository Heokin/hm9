//
//  ViewController.swift
//  task2
//
//  Created by Stas Dashkevich on 19.03.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelInfo: UILabel!
    let carInfoVC = Car(name: "Mercury", model: "Milan", date: 2006, horsePower: 237)
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = .orange
        labelInfo.text = " \(carInfoVC.name) \(carInfoVC.model) \(carInfoVC.date) \(carInfoVC.horsePower) "
    }

    @IBAction func nextButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: Bundle.main)
        if let vc2 = storyboard.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                vc2.setCarInfo(self.carInfoVC)
            }
            present(vc2, animated: true, completion: nil)
        }
    }
    
}

