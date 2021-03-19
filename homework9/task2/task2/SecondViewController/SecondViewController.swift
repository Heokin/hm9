//
//  SecondViewController.swift
//  task2
//
//  Created by Stas Dashkevich on 19.03.21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelModel: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelHorsePower: UILabel!
    
    var carInfo = Car(name: "", model: "", date: 0, horsePower: 0)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        labelDate.text = String(carInfo.date)
        labelName.text = carInfo.name
        labelModel.text = carInfo.model
        labelHorsePower.text = String(carInfo.horsePower)
        
       
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
