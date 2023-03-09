//
//  HomeTableViewCell.swift
//  OfficeUITest
//
//  Created by Muskan on 09/03/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    var arrOfImage: [String]!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
}
extension HomeTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrOfImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as? HomeCollectionViewCell else {
            return UICollectionViewCell() }
        cell.imgRender(imagesOfProduct: UIImage(named: arrOfImage[indexPath.row]) ?? UIImage())
       
        print("something")
        
        
        return cell
    }
    
}
