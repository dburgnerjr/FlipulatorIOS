//
//  AboutScreen.swift
//  FlipulatorIOS
//
//  Created by Daniel Burgner on 7/23/17.
//  Copyright © 2017 Daniel Burgner. All rights reserved.
//

import UIKit

class AboutScreen: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var developerLabel: UILabel!
    @IBOutlet weak var creatorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let free = Bundle.main.object(forInfoDictionaryKey: "Free")
        if (free != nil) {
            developerLabel.isHidden = true
            creatorLabel.isHidden = true
        } else {
            return
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
}
