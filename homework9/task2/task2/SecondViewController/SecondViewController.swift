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
    
    var carInfo: Car?
      
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        view.subviews.forEach { ($0 as? UILabel)?.text = "Waiting info..." }
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setCarInfo(_ carInfo: Car) {
        self.carInfo = carInfo
        labelDate.text = String(carInfo.date)
        labelName.text = carInfo.name
        labelModel.text = carInfo.model
        labelHorsePower.text = String(carInfo.horsePower)
    }
}
