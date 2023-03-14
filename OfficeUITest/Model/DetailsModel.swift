//
//  DetailsModel.swift
//  OfficeUITest
//
//  Created by Muskan on 09/03/23.
//

import Foundation

class DetailsModel {
    
    var strSectionName: String
    var arrImage: [String]
    var arrImageTitle: [String]
    var arrImageDescription: [String]
    
    init(strSectionName: String, arrImage: [String], arrImageTitle: [String], arrImageDescription: [String]) {
        self.strSectionName = strSectionName
        self.arrImage = arrImage
        self.arrImageTitle = arrImageTitle
        self.arrImageDescription = arrImageDescription
    }
}
