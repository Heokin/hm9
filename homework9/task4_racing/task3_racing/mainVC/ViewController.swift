//
//  ViewController.swift
//  task3_racing
//
//  Created by Stas Dashkevich on 21.03.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var startButtonOutlet: UIButton!
    @IBOutlet weak var settingsButtonOutlet: UIButton!
    @IBOutlet weak var topRaitingButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "backgroung-image")!)
        startButtonOutlet.layer.cornerRadius = 25
        settingsButtonOutlet.layer.cornerRadius = 25
        topRaitingButtonOutlet.layer.cornerRadius = 25
        
    }

    @IBAction func startButton(_ sender: Any) {
        //StartViewController
        let storyboard = UIStoryboard(name: "StartStoryboard", bundle: Bundle.main)
        if let vcStart = storyboard.instantiateViewController(identifier: "StartViewController") as? StartViewController {
//            vcStart.modalTransitionStyle = .crossDissolve
            vcStart.modalPresentationStyle = .overCurrentContext
            present(vcStart, animated: false, completion: nil)
        }
    }
    
    @IBAction func settingsButton(_ sender: Any) {
         //SettingViewController
        let storyboard = UIStoryboard(name: "SettingStoryboard", bundle: Bundle.main)
        if let vcSetting = storyboard.instantiateViewController(identifier: "SettingViewController") as? SettingViewController {
            present(vcSetting, animated: true, completion: nil)
        }
    }
    
    @IBAction func topRaitingButton(_ sender: Any) {
        //TopRaitingViewController
        let storyboard = UIStoryboard(name: "TopRaitingStoryboard", bundle: Bundle.main)
        if let vcTopRaiting = storyboard.instantiateViewController(identifier: "TopRaitingViewController") as? TopRaitingViewController {
            present(vcTopRaiting, animated: true, completion: nil)
        }
    }
}

