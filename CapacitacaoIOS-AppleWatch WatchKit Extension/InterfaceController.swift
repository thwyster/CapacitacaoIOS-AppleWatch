//
//  InterfaceController.swift
//  CapacitacaoIOS-AppleWatch WatchKit Extension
//
//  Created by ALUNO on 15/04/19.
//  Copyright © 2019 Aluno. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var timer: WKInterfaceTimer!
    @IBOutlet weak var botao: WKInterfaceButton!
    var running = false
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func StartStop() {
        if running {
            timer.stop()
            botao.setTitle("Start")
            
        } else {
            timer.setDate(Date(timeIntervalSinceNow: 60))
            timer.start()
            botao.setTitle("Stop")
        }
        
        running = !running
        
        scroll(to: timer, at: .top, animated: true)
    }
}
