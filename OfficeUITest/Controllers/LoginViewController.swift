//
//  ViewController.swift
//  OfficeUITest
//
//  Created by Muskan on 07/03/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var txtFieldFirstName: UITextField!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var txtFieldLastName: UITextField!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var lblDOB: UILabel!
    @IBOutlet weak var txtFieldDOB: UITextField!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var txtFieldPassword: UITextField!
    @IBOutlet weak var lblConfirmPassword: UILabel!
    @IBOutlet weak var txtFieldConfirmPassword: UITextField!
    @IBOutlet weak var datePickerForDOB: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtFieldDOB.setupInputDatePicker(target: self, selector: #selector(tapDone))
    }
    
    
    @IBAction func btnLogin(_ sender: Any) {
//        if sbmtBtnTapped(sender: <#T##UIButton#>) {
//            (sender as AnyObject).addTarget(self, action: #selector(sbmtBtnTapped(sender:)), for: .touchUpInside)
//        }
//        else {
            guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeTabBarVc") as? HomeTabBarVc else { return }
            self.navigationController?.pushViewController(homeVC, animated: true)
//        }
    }
    
    
    @objc func sbmtBtnTapped(sender: UIButton){
        if(txtFieldFirstName.text?.isEmpty ?? false ||
           txtFieldLastName.text?.isEmpty ?? false ||
           txtFieldEmail.text?.isEmpty ?? false ||
           txtFieldDOB.text?.isEmpty ?? false ||
           txtFieldPassword.text?.isEmpty ?? false || txtFieldConfirmPassword.text?.isEmpty ?? false){
            let alert = UIAlertController(title: nil, message: "Please fill all the details", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }
//
    @objc func tapDone() {
            if let datePicker = self.txtFieldDOB.inputView as? UIDatePicker {
                let dateformatter = DateFormatter()
                dateformatter.dateStyle = .medium
                dateformatter.dateFormat = "MM/dd/yyyy"
                self.txtFieldDOB.text = dateformatter.string(from: datePicker.date)
            }
            self.txtFieldDOB.resignFirstResponder()
        }
}
extension LoginViewController: UITextFieldDelegate {
    
}
