//
//  ViewController.swift
//  secondTask
//
//  Created by Stas Dashkevich on 9.03.21.
//

import UIKit

class ViewController: UIViewController {

    let circleActionButton = UIButton()
    var colorArray = [UIColor.red, UIColor.green, UIColor.yellow, UIColor.blue]
    
    override func viewDidLoad() {
        circleActionButton.frame = CGRect(x: randonApear().x, y: randonApear().y, width: 65, height: 65)
        circleActionButton.backgroundColor = colorArray[Int.random(in: 0..<colorArray.count - 1)]
        circleActionButton.layer.cornerRadius = 30
        circleActionButton.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        
        view.addSubview(circleActionButton)
    }
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .gray
        self.view = view
    }

    @objc func tapButton() {
        circleActionButton.frame = CGRect(x: randonApear().x, y: randonApear().y, width: 65, height: 65)
        circleActionButton.backgroundColor = colorArray[Int.random(in: 0..<colorArray.count - 1)]
    }
    
    func randonApear() -> ( x: Int, y: Int) {
        let randomSizeX = Int.random(in: 20..<400)
        let randomSizeY = Int.random(in: 200..<400)
        
        return (randomSizeX, randomSizeY)
    }
    
}

