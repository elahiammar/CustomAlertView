//
//  ViewController.swift
//  CutomAlertView
//
//  Created by elahiammar on 7/31/16.
//  Copyright © 2016 elahiammar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PopUpViewControllerDelegate {

    @IBOutlet weak var selectedCityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: Show Cities Button Action
    
    @IBAction func showCitiesTapped(sender: UIButton) {
        let viewController = UIApplication.sharedApplication().keyWindow?.rootViewController
        viewController!.definesPresentationContext = true
        
        let popUpviewController = PopUpViewController(nibName: "PopUpViewController", bundle: nil)
        popUpviewController.delegate = self
        popUpviewController.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
        popUpviewController.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        
        
        viewController!.presentViewController(popUpviewController, animated: true, completion: nil)
        
    }
    
    // MARK: PopUpViewController Delegate
    
    func selectedRowText(text: String) {
        self.selectedCityLabel.text = text
    }
    
}

