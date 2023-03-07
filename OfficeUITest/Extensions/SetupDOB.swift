//
//  SetupDatePicker.swift
//  OfficeUITest
//
//  Created by Muskan on 07/03/23.
//

import UIKit

extension UITextField {
    
    func setupInputDatePicker(target: Any, selector: Selector ) {
        
        let screenWidth = UIScreen.main.bounds.width
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 250))
        
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        
        self.inputView = datePicker
        
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 40))
        let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let btnCancel = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(btnCancel))
        let btnDone = UIBarButtonItem(title: "Done", style: .plain, target: nil, action: nil)
        toolBar.setItems([btnDone, flexible, btnCancel], animated: false)
        self.inputAccessoryView = toolBar //9
    }
    
    @objc func btnCancel() {
        self.resignFirstResponder()
    }
    
}
