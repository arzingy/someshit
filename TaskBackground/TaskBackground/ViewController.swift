//
//  ViewController.swift
//  TaskBackground


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        labelBackground.text = "First picture"
        labelBackground.textColor = UIColor.white
                
                view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
    }

    @IBOutlet weak var labelBackground: UILabel!
    
    @IBOutlet weak var switchBackground: UISwitch!
    
    
    @IBAction func backgroundSwitchTapped(_ sender: Any) {
        if switchBackground.isOn
                {
            labelBackground.text = "cat"
                    view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
                }
                else{
                    labelBackground.text = "dog"
                    view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
                }
        
    }
}

