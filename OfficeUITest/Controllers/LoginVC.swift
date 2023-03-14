//
//  LoginVC.swift
//  OfficeUITest
//
//  Created by Muskan on 07/03/23.
//

import UIKit

class LoginVC: UIViewController {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtFieldDOB.setupInputDatePicker(target: self, selector: #selector(self.selectDate))
    }
    
    
    @IBAction func btnLogin(_ sender: Any) {
        if self.validateFields() {
            guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeTabBarVc") as? HomeTabBarVc else { return }
            self.navigationController?.pushViewController(homeVC, animated: true)
        }
    }
    
    func validateFields() -> Bool {
        if self.txtFieldEmail.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            self.txtFieldDOB.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            self.txtFieldFirstName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            self.txtFieldLastName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            self.txtFieldPassword.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            self.showAlert(title: "Error", message: "Please fill in all fields")
            return false
        }
        
        let passwordRegx = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&<>*~:`-]).{8,}$"
        let passwordCheck = NSPredicate(format: "SELF MATCHES %@",passwordRegx)
        if !passwordCheck.evaluate(with: self.txtFieldPassword.text) {
            showAlert(title: "Error", message: "Please Enter a Strong Password")
            return false
        }
        
        let emailRegx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailCheck = NSPredicate(format: "SELF MATCHES %@", emailRegx)
        if !emailCheck.evaluate(with: self.txtFieldEmail.text) {
            showAlert(title: "Error", message: "Please Enter a Valid Email")
            return false
        }
        
        if self.txtFieldPassword.text != self.txtFieldConfirmPassword.text {
            showAlert(title: "Error", message: "Please Enter the Same Password")
            return false
        }
        return true
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func selectDate() {
        if let datePicker = self.txtFieldDOB.inputView as? UIDatePicker {
            let dateformatter = DateFormatter()
            dateformatter.dateStyle = .medium
            dateformatter.dateFormat = "MM/dd/yyyy"
            self.txtFieldDOB.text = dateformatter.string(from: datePicker.date)
            self.view.endEditing(true)
        }
        self.txtFieldDOB.resignFirstResponder()
    }
}
