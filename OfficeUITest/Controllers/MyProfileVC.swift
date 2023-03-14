//
//  MyProfileVC.swift
//  OfficeUITest
//
//  Created by Muskan on 10/03/23.
//

import UIKit

class MyProfileVC: UIViewController {

    var arrMyProfile = [MyProfileModel(strName: "Muskan",
                                       strFatherName: "Dilbara Khan",
                                       strPhoneNum: "9988776655",
                                       strCity: "Mohali",
                                       strCareerObj: "To obtain a challenging position in Search Engine Optimization, web development, and related areas that would best utilize expertise in the business environment and presently seeking opportunity in a reputed organization where I can learn more.",
                                       strProfessionalExperience: "I have accumulated a wealth of experience in the field of digital marketing over the past few years. This includes eight months of working experience as an SEO executive at Finndit, during which I developed and executed successful SEO strategies. Additionally, I have worked as an SEO freelancer for three months, honing my skills and knowledge in this area.",
                                       strQualification: "I have completed my education from reputable institutions affiliated with the CBSE Board. In 2020, I passed the Senior School Certificate Examination with Stenography from GMSSS SEC-37B in Chandigarh. During my time at this institution, I achieved an impressive aggregate score of 75%, indicating my strong academic performance and dedication to my studies.",
                                       strPersonalityTraits: "I possess a number of important qualities that make me a valuable asset in any professional setting. First and foremost, I have a strong sense of responsibility and an honest attitude towards my work. I take pride in delivering high-quality work and take my commitments seriously.",
                                       strComputerSkills: "I have a range of technical skills that make me well-suited for various roles in the digital world. I possess a basic knowledge of computer operations, including hardware and software components, which enables me to troubleshoot and maintain computer systems. Additionally, I am proficient in English and Hindi typing, which allows me to communicate effectively in both languages.",
                                       strJobResponsibilities: "In my previous role, I was responsible for the development and maintenance of my company's website. This involved ensuring that the website was up-to-date, user-friendly, and optimized for search engines. As part of my SEO efforts, I successfully ranked six keywords on the first and second positions, which helped to increase website traffic and generate leads.", strMyProfileImage: "MyProfile")]
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblFatherName: UILabel!
    @IBOutlet weak var lblPhoneNumber: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var txtViewCareerObj: UITextView!
    @IBOutlet weak var txtViewProfessionalExperience: UITextView!
    @IBOutlet weak var txtViewQualification: UITextView!
    @IBOutlet weak var txtViewPersonalityTraits: UITextView!
    @IBOutlet weak var txtViewComputerSkills: UITextView!
    @IBOutlet weak var txtViewJobResponsibilities: UITextView!
    @IBOutlet weak var imgMyProfile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblName.text = self.arrMyProfile.first?.strName
        self.lblFatherName.text = self.arrMyProfile.first?.strFatherName
        self.lblPhoneNumber.text = self.arrMyProfile.first.self?.strPhoneNum
        self.lblCity.text = self.arrMyProfile.first.self?.strCity
        self.txtViewCareerObj.text = self.arrMyProfile.first.self?.strCareerObj
        self.txtViewProfessionalExperience.text = self.arrMyProfile.first.self?.strProfessionalExperience
        self.txtViewQualification.text = self.arrMyProfile.first.self?.strQualification
        self.txtViewPersonalityTraits.text = self.arrMyProfile.first.self?.strPersonalityTraits
        self.txtViewComputerSkills.text = self.arrMyProfile.first.self?.strComputerSkills
        self.txtViewJobResponsibilities.text = self.arrMyProfile.first.self?.strJobResponsibilities
        self.imgMyProfile.image = UIImage(named: self.arrMyProfile.first.self!.strMyProfileImage)
    }
}
