//
//  ProductDetailVC.swift
//  OfficeUITest
//
//  Created by Muskan on 10/03/23.
//

import UIKit

class ProductDetailVC: UIViewController {

    @IBOutlet weak var imgViewProducts: UIImageView!
    @IBOutlet weak var txtViewProductDescription: UITextView!
    
    var imgTitle: String?
    var imgFullProduct = UIImage()
    var productDescription: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = self.imgTitle
        self.imgViewProducts.image = self.imgFullProduct
        self.txtViewProductDescription.text = self.productDescription
    }
}
