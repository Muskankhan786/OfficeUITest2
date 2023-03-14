//
//  HomeTabBarVc.swift
//  OfficeUITest
//
//  Created by Muskan on 07/03/23.
//

import UIKit

class HomeTabBarVc: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
}
