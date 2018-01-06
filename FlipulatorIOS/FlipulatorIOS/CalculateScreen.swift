//
//  CalculateScreen.swift
//  FlipulatorIOS
//
//  Created by Daniel Burgner on 1/5/18.
//  Copyright © 2018 Daniel Burgner. All rights reserved.
//

import UIKit

class CalculateScreen: UIViewController {
    
    @IBOutlet weak var btnHelp: UIButton!
    @IBOutlet weak var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let paid = Bundle.main.object(forInfoDictionaryKey: "Paid")
        if (paid != nil) {
        } else {
            return
        }
    }

    @IBAction func btnHelp(_ sender: Any) {
        let alertController = UIAlertController(title: "Help", message:
            "Enter the address and square footage of the property, including the number of bedrooms and bathrooms, sale price, ARV, budget items and rehab budget. Rehab budget can be a flat rate or a rehab type. Rehab types are classified as:  Low ($15/sf, yard work and painting), Medium ($20/sf > 1500 sf or $25/sf < 1500 sf, Low + kitchen and bathrooms, High ($30/sf, Medium + new roof), Super-High ($40/sf, complete gut job), Bulldozer ($125/sf, demolition and rebuild).", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler:nil))
    }
    
    @IBAction func btnSubmit(_ sender: Any) {
        let alertController = UIAlertController(title: "Submit", message:
            "Sending info to be calculated.", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler:nil))
    }
    
}
