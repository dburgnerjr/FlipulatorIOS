//
//  ViewController.swift
//  FlipulatorIOS
//
//  Created by Daniel Burgner on 7/21/17.
//  Copyright © 2017 Daniel Burgner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var btnAbout: UIButton!
    @IBOutlet weak var btnCalculate: UIButton!
    @IBOutlet weak var btnUpgradeDonate: UIButton!
    @IBOutlet weak var btnDonateShare: UIButton!
    @IBOutlet weak var btnShareOpenFiles: UIButton!
    @IBOutlet weak var btnOpenFiles: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let paid = Bundle.main.object(forInfoDictionaryKey: "Paid")
        if (paid != nil) {
            label.text = "Flipulator Premium Version"
            btnUpgradeDonate.setTitle("Donate", for: .normal)
            btnDonateShare.setTitle("Share", for: .normal)
            btnShareOpenFiles.setTitle("Open Files", for: .normal)
            btnOpenFiles.isHidden = true
        } else {
            return
        }
    }

    @IBAction func btnAbout(_ sender: Any) {
    }
    
    @IBAction func btnCalculate(_ sender: Any) {
    }
    
    @IBAction func btnUpgradeDonate(_ sender: Any) {
    }
    
    @IBAction func btnDonateShare(_ sender: Any) {
    }
    
    @IBAction func btnShareOpenFiles(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

