//
//  HomeProductVC.swift
//  OfficeUITest
//
//  Created by Muskan on 09/03/23.
//

import UIKit

class HomeProductVC: UIViewController {

    var arrImagesOfProduct = [ModelOFDetails(strsectionName: "Fruits", arrImage: ["Apple","Banana","Avocados","Grapes","Kiwi","Mango","Orange","Pineapple","Pomegranate","Strawberries"]),
        ModelOFDetails(strsectionName: "Vegetables", arrImage: ["Beans","Cabbage","Carrot","Cauliflower","Chilli","Ginger","Peas","Spinach","Potato","Tomato"]),
        ModelOFDetails(strsectionName: "Flowers", arrImage: ["Rose","Lotus","Lavender","Daisy","Flax","Hibiscus","Jasmine","Magnolia","Sunflower","Tulip",]),
        ModelOFDetails(strsectionName: "Animals", arrImage: ["Lion","Tiger","Bear","Monkey","Snake","Dog","Elephant","Panda","Rabbit","Fox"]),
        ModelOFDetails(strsectionName: "Birds", arrImage: ["Crow","Duck","Eagle","Hen","HummingBird","Ostrich","woodpecker","Swan","Peagon","Peacock"]),
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
extension HomeProductVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.arrImagesOfProduct[section].strsectionName
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrImagesOfProduct.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell else {return UITableViewCell() }
        cell.arrOfImage = self.arrImagesOfProduct[indexPath.section].arrImage

        return cell
    }
//    
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        view.tintColor = .gray
//    }
    
    
}
