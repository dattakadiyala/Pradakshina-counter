//
//  ViewController.swift
//  Pradakshina counter
//
//  Created by Datta on 12/29/17.
//  Copyright © 2017 dvapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    let impact = UIImpactFeedbackGenerator()
    var counterNumbers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "0"
    }
    
    @IBAction func incrementCount(_ sender: Any) {
        self.counterNumbers += 1
        self.counterLabel.text = String(self.counterNumbers)
        impact.impactOccurred()
    }
    
    @IBAction func decrementCount(_ sender: Any) {
        impact.impactOccurred()
        self.counterNumbers -= 1
        self.counterLabel.text = String(self.counterNumbers)
    }
    
    @IBAction func resetCount(_ sender: Any) {
        let alert = UIAlertController(title: "Are you sure !", message: "to reset", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.destructive, handler: { action in
            self.counterNumbers = 0
            self.counterLabel.text = String(self.counterNumbers)
        }))
        alert.addAction(UIAlertAction(title: "cancel", style: UIAlertActionStyle.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    

}


