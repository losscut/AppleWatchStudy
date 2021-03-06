//
//  InterfaceController.swift
//  TextInput WatchKit Extension
//
//  Created by minjun.ha on 06/03/2019.
//  Copyright © 2019 thechamcham. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

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

    @IBAction func inputAction() {
        let phrases = ["OK", "I'm busy.", "Where are you?", "Thanks."]
        
        
        presentTextInputController(withSuggestions: phrases,
                                   allowedInputMode: WKTextInputMode.allowEmoji, completion: { (result) -> Void in
                                    
                                    guard let choice = result else {
                                        return
                                    }
                                    let suggestion = choice[0]
                                    print(suggestion)
                                    
        })
    }
}
