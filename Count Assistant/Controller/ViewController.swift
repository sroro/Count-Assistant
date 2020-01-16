//
//  ViewController.swift
//  Count Assistant
//
//  Created by Rodolphe Schnetzer on 07/11/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var delete: UIButton!
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var number: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if count.assistant == 0 {
            reset.isHidden = true
        }
        
       let name = Notification.Name(rawValue: "countAssistant")
        NotificationCenter.default.addObserver(self, selector: #selector(updateScreen), name: name, object: nil)
    }
    
    var count = Counter()
    
    @IBAction func addNumber(_ sender: Any) {
        count.addAssistant()
    }
    
    @objc func updateScreen() {
        number.text = ("\(count.assistant)")
        if count.assistant == 0 {
                   reset.isHidden = true
        } else {
            reset.isHidden = false
        }
               
    }
    
    @IBAction func deleteNumber(_ sender: Any) {
        count.deleteAssistant()
    }
    
    @IBAction func resetNumber(_ sender: Any) {
        count.reset()
  }
}
