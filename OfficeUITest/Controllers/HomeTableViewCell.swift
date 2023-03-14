//
//  HomeTableViewCell.swift
//  OfficeUITest
//
//  Created by Muskan on 09/03/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    var arrOfImage: [String]!
    var arrProductTitle: [String]!
    var arrProductDescription: [String]!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    weak var navigationController: UINavigationController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension HomeTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrOfImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as? HomeCollectionViewCell else {
            return UICollectionViewCell() }
        cell.imgRender(imagesOfProduct: UIImage(named: self.arrOfImage[indexPath.row]) ?? UIImage())
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let productVC = storyboard.instantiateViewController(withIdentifier: "ProductDetailVC") as? ProductDetailVC else { return }
        productVC.imgTitle = self.arrProductTitle[indexPath.row]
        productVC.imgFullProduct = UIImage(named: self.arrOfImage[indexPath.row]) ?? UIImage()
        productVC.productDescription = self.arrProductDescription[indexPath.row]
        self.navigationController?.pushViewController(productVC, animated: true)
    }
}

