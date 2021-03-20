//
//  ViewController.swift
//  sqer_Lesson6
//
//  Created by Stas Dashkevich on 9.03.21.
//

import UIKit

class ViewController: UIViewController {
    
    // create buttons/labels
    let fillButtonAction = UIButton()
    let clearButtonAction = UIButton()
    let firstLabel = UILabel()
    let secondLabel = UILabel()
    let thirdLabel = UILabel()
    let fourthLabel = UILabel()
    
    override func viewDidLoad() {
        fillButtonAction.frame = CGRect(x: 80, y: 600, width: 65, height: 65)
        fillButtonAction.setTitle("FILL", for: .normal)
        fillButtonAction.backgroundColor = .black
        fillButtonAction.addTarget(self, action: #selector(fillSquareButton), for: .touchUpInside)
        
        clearButtonAction.frame = CGRect(x: 200, y: 600, width: 65, height: 65)
        clearButtonAction.setTitle("CLEAR", for: .normal)
        clearButtonAction.backgroundColor = .black
        clearButtonAction.addTarget(self, action: #selector(clearSquareButton), for: .touchUpInside)
        
        view.addSubview(clearButtonAction)
        view.addSubview(fillButtonAction)
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(thirdLabel)
        view.addSubview(fourthLabel)
    }
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .gray
        self.view = view
    }
    
    @objc func fillSquareButton() {
        firstLabel.isHidden = false
        secondLabel.isHidden = false
        thirdLabel.isHidden = false
        fourthLabel.isHidden = false
        
        firstLabel.frame = CGRect(x: randomSizeLabel().x, y: randomSizeLabel().y, width: 65, height: 65)
        firstLabel.backgroundColor = .yellow
        
        secondLabel.frame = CGRect(x: randomSizeLabel().x, y: randomSizeLabel().y, width: 65, height: 65)
        secondLabel.backgroundColor = .red
        thirdLabel.frame = CGRect(x: randomSizeLabel().x, y: randomSizeLabel().y, width: 65, height: 65)
        thirdLabel.backgroundColor = .green
        fourthLabel.frame = CGRect(x: randomSizeLabel().x, y: randomSizeLabel().y, width: 65, height: 65)
        fourthLabel.backgroundColor = .blue
    }
    
    @objc func clearSquareButton() {
        firstLabel.isHidden = true
        secondLabel.isHidden = true
        thirdLabel.isHidden = true
        fourthLabel.isHidden = true
    }
    
    func randomSizeLabel() -> (x: Int, y: Int) {
        let randomSizeY = Int.random(in: 10..<400)
        let randomSizeX = Int.random(in: 10..<400)
        
        return (randomSizeY, randomSizeX)
    }
}

