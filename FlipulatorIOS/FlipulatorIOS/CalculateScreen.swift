//
//  CalculateScreen.swift
//  FlipulatorIOS
//
//  Created by Daniel Burgner on 1/5/18.
//  Copyright © 2018 Daniel Burgner. All rights reserved.
//

import UIKit

class CalculateScreen: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var btnHelp: UIButton!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var budgetFlatRateRehabTypeSC: UISegmentedControl!
    @IBOutlet weak var lblRehabBudgetFRType: UILabel!
    @IBOutlet weak var txtRehabBudgetFlatRate: UITextField!
    
    var helpAlertController: UIAlertController!
    var pickerData: [String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblRehabBudgetFRType.text = "Rehab Budget:"
        txtRehabBudgetFlatRate.isHidden = false
        pickerView.isHidden = true
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        
        pickerData = ["Low", "Medium", "High", "Super-High", "Bulldozer"]
        
        let paid = Bundle.main.object(forInfoDictionaryKey: "Paid")
        if (paid != nil) {
        } else {
            return
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func budgetFlatRateRehabType(_ sender: Any) {
        if (budgetFlatRateRehabTypeSC.selectedSegmentIndex == 0) {
            lblRehabBudgetFRType.text = "Rehab Budget:"
            txtRehabBudgetFlatRate.isHidden = false
            pickerView.isHidden = true
        } else {
            lblRehabBudgetFRType.text = "Rehab Type:"
            txtRehabBudgetFlatRate.isHidden = true
            pickerView.isHidden = false
        }
    }
    
    // number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // the data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    @IBAction func btnHelp(_ sender: Any) {
        helpAlertController = UIAlertController(title: "Help", message:
            "Enter the address and square footage of the property, including the number of bedrooms and bathrooms, sale price, ARV, budget items and rehab budget. Rehab budget can be a flat rate or a rehab type. Rehab types are classified as:  Low ($15/sf, yard work and painting), Medium ($20/sf > 1500 sf or $25/sf < 1500 sf, Low + kitchen and bathrooms, High ($30/sf, Medium + new roof), Super-High ($40/sf, complete gut job), Bulldozer ($125/sf, demolition and rebuild).", preferredStyle: UIAlertControllerStyle.alert)
        helpAlertController.addAction(UIAlertAction(title: "OK", style:
            UIAlertActionStyle.default, handler: nil))
        present(helpAlertController, animated: true, completion: nil)
    }
    
    @IBAction func btnSubmit(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ResultsVC") as! ResultsScreen
        self.present(nextViewController, animated: true, completion: nil)
    }
    
}
