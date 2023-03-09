//
//  HomeCollectionViewCell.swift
//  OfficeUITest
//
//  Created by Muskan on 09/03/23.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgOfProducts: UIImageView!
    
    func imgRender(imagesOfProduct: UIImage) {
        self.imgOfProducts.image = imagesOfProduct
    }
}
