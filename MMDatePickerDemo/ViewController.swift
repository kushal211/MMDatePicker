//
//  ViewController.swift
//  MIDatePickerDemo
//
//  Created by Manish on 23/12/16.
//  Copyright © 2016 Manish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectedValueLabel: UILabel!
    
    var datePicker = MMDatePicker.getFromNib()
    var dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDatePicker()
        
        dateFormatter.dateFormat = "dd/yyyy//MM"
        
    }
    
    fileprivate func setupDatePicker() {
        
        datePicker.delegate = self
        
        datePicker.config.startDate = Date()
        
        // Optional
        /*
        datePicker.config.animationDuration = 0.50
        
        datePicker.config.cancelButtonTitle = "Cancel"
        datePicker.config.confirmButtonTitle = "Done"
        
        datePicker.config.contentBackgroundColor = UIColor(red: 253/255.0, green: 253/255.0, blue: 253/255.0, alpha: 1)
        datePicker.config.headerBackgroundColor = UIColor(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1)
        datePicker.config.confirmButtonColor = UIColor(red: 32/255.0, green: 146/255.0, blue: 227/255.0, alpha: 1)
        datePicker.config.cancelButtonColor = UIColor(red: 32/255.0, green: 146/255.0, blue: 227/255.0, alpha: 1)
        */
    }
    
    @IBAction func showDatePicker(_ sender: AnyObject) {
        datePicker.show(inVC: self)
    }

}

extension ViewController: MMDatePickerDelegate {
    
    func mmDatePicker(_ amDatePicker: MMDatePicker, didSelect date: Date) {
        selectedValueLabel.text = dateFormatter.string(from: date)
    }
    
    func mmDatePickerDidCancelSelection(_ amDatePicker: MMDatePicker) {
        // NOP
    }
    
}

