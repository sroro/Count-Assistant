//
//  Counter.swift
//  Count Assistant
//
//  Created by Rodolphe Schnetzer on 07/11/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

class Counter {
    var assistant = 0 {
        didSet{
            if assistant < 0 {
                assistant = 0
            }
            let name = Notification.Name(rawValue: "countAssistant")
            let notification = Notification(name: name)
            NotificationCenter.default.post(notification)
        }
    }
    
    func addAssistant() {
        
        assistant += 1
    }
    
    func deleteAssistant(){
        assistant -= 1
        
    }
    
    func reset() {
        assistant = 0
    }
    
    
}
