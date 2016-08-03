//
//  PopUpViewController.swift
//  CutomAlertView
//
//  Created by elahiammar on 7/31/16.
//  Copyright © 2016 elahiammar. All rights reserved.
//

import UIKit

protocol PopUpViewControllerDelegate: class {
    func selectedRowText(text: String)
}

class PopUpViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var dataArray: NSArray!
    weak var delegate: PopUpViewControllerDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataArray = Constants.CitiesDataSource
   
    }
    
    // MARK:- Done Button Action
    
    @IBAction func doneButtonTapped(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    // MARK:- UIPickerView Data Source
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataArray.count
    }
    
    // MARK:- UIPickerView Delegates
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataArray[row] as? String
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        delegate?.selectedRowText(dataArray[row] as! String)
        
    }

}
