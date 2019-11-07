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
        // Do any additional setup after loading the view.
    }
    var newScore = 0
    
    @IBAction func addNumber(_ sender: Any) {
      newScore += 1
        number.text = ("\(newScore)")
    }
    
    @IBAction func deleteNumber(_ sender: Any) {
        if newScore > 0 {
            newScore -= 1
            number.text = ("\(newScore)")
        }
    }
    @IBAction func resetNumber(_ sender: Any) {
        if newScore != 0 {
            newScore = 0
            number.text = ("\(newScore)")
    }
  }
}
