//
//  ViewController.swift
//  TaskBackground
//
//  Created by Daniil on 6.05.21.
//  With the help Dzmitry Semenovich
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        labelBackground.text = "Background image: bg1.jpg"
        labelBackground.textColor = UIColor.white
                
                view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
    }

    @IBOutlet weak var labelBackground: UILabel!
    
    @IBOutlet weak var switchBackground: UISwitch!
    
    
    @IBAction func backgroundSwitchTapped(_ sender: Any) {
        if switchBackground.isOn
                {
            labelBackground.text = "Background image: bg1.jpg"
                    view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
                }
                else{
                    labelBackground.text = "Background image: bg2.jpg"
                    view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
                }
        
    }
}

