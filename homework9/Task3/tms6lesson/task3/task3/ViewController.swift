
import UIKit

class ViewController: UIViewController {

    let UpButton = UIButton()
    let downButton = UIButton()
    let rightButton = UIButton()
    let leftButton = UIButton()
    let mainLabel = UILabel()
    
    var xPosition: Int = 160
    var yPosition: Int = 450
    
    
    override func viewDidLoad() {
        UpButton.frame = CGRect(x: 182, y: 696, width: 60, height: 60)
        UpButton.backgroundColor = .black
        UpButton.setTitle("UP", for: .normal)
        UpButton.addTarget(self, action: #selector(upButtonAction), for: .touchUpInside)
        
        downButton.frame = CGRect(x: 182, y: 812, width: 60, height: 60)
        downButton.backgroundColor = .black
        downButton.setTitle("DOWN", for: .normal)
        downButton.addTarget(self, action: #selector(downButtonAction), for: .touchUpInside)
        
        leftButton.frame = CGRect(x: 124, y: 754, width: 60, height: 60)
        leftButton.backgroundColor = .black
        leftButton.setTitle("LEFT", for: .normal)
        leftButton.addTarget(self, action: #selector(leftButtonAction), for: .touchUpInside)
        
        rightButton.frame = CGRect(x: 240, y: 754, width: 60, height: 60)
        rightButton.backgroundColor = .black
        rightButton.setTitle("RIGHT", for: .normal)
        rightButton.addTarget(self, action: #selector(rightButtonAction), for: .touchUpInside)
        
        mainLabel.frame = CGRect(x: xPosition, y: yPosition, width: 60, height: 60)
        mainLabel.text = "|HI|"
        mainLabel.backgroundColor = .white
        mainLabel.textAlignment = .center
        
        view.addSubview(UpButton)
        view.addSubview(downButton)
        view.addSubview(leftButton)
        view.addSubview(rightButton)
        view.addSubview(mainLabel)
    }
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .gray
        self.view = view
    }
    
    @objc func upButtonAction() {
        if yPosition != 40 {
        yPosition -= 10
        mainLabel.frame.origin = CGPoint(x: xPosition, y: yPosition)
        }
    }
    
    @objc func downButtonAction() {
        if yPosition != 850 {
        yPosition += 10
        mainLabel.frame.origin = CGPoint(x: xPosition, y: yPosition)
        }
    }
    
    @objc func leftButtonAction() {
        if xPosition != 0{
        xPosition -= 10
        mainLabel.frame.origin = CGPoint(x: xPosition, y: yPosition)
        } else {
            xPosition += 10
        }
    }
    
    @objc func rightButtonAction() {
        if xPosition != 370 {
        xPosition += 10
        mainLabel.frame.origin = CGPoint(x: xPosition, y: yPosition)
        } else {
            xPosition -= 10
        }
    }
}

