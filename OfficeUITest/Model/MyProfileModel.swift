//
//  MyProfileModel.swift
//  OfficeUITest
//
//  Created by Muskan on 10/03/23.
//

import Foundation

struct MyProfileModel {
    
    var strName: String
    var strFatherName: String
    var strPhoneNum: String
    var strCity: String
    var strCareerObj: String
    var strProfessionalExperience: String
    var strQualification: String
    var strPersonalityTraits: String
    var strComputerSkills: String
    var strJobResponsibilities: String
    var strMyProfileImage: String
    
    init(strName: String, strFatherName: String, strPhoneNum: String, strCity: String, strCareerObj: String, strProfessionalExperience: String, strQualification: String, strPersonalityTraits: String, strComputerSkills: String, strJobResponsibilities: String, strMyProfileImage: String) {
        
        self.strName = strName
        self.strFatherName = strFatherName
        self.strPhoneNum = strPhoneNum
        self.strCity = strCity
        self.strCareerObj = strCareerObj
        self.strProfessionalExperience = strProfessionalExperience
        self.strQualification = strQualification
        self.strPersonalityTraits = strPersonalityTraits
        self.strComputerSkills = strComputerSkills
        self.strJobResponsibilities = strJobResponsibilities
        self.strMyProfileImage = strMyProfileImage
    }
}
