//
//  HomeProductVC.swift
//  OfficeUITest
//
//  Created by Muskan on 09/03/23.
//

import UIKit

class HomeProductVC: UIViewController {
    
    var arrImagesOfProduct = [DetailsModel(strSectionName: "Fruits", arrImage: ["Apple","Banana","Avocados","Grapes","Kiwi","Mango","Orange","Pineapple","Pomegranate","Strawberries"], arrImageTitle:[ "Apple","Banana","Avocados","Grapes","Kiwi","Mango","Orange","Pineapple","Pomegranate","Strawberries"], arrImageDescription: ["Apple, (Malus domestica), domesticated tree and fruit of the rose family (Rosaceae), one of the most widely cultivated tree fruits. ","A banana is the common name for a type of fruit and also the name for the herbaceous plants that grow it.","Avocados are grown primarily in equatorial, tropical and subtropical areas. The most sought out variety of the avocado fruit is the creamy Hass Avocado.","Grapes come in different colors and forms. There are red, green, and purple grapes, seedless grapes, grape jelly, grape jam and grape juice, raisins, currents, and sultanas.","Kiwi fruit is not often considered a “superfood”, but in fact, it’s a fruit that is full of important vitamins and minerals and can have a very positive effect on your health.","A tropical usually large ovoid or oblong fruit with a firm yellowish-red skin, hard central stone, and juicy aromatic pulp.","The orange is a usually round or oval citrus; its rind and flesh are generally orange, except the varieties of red pulp.","A tropical plant, Ananas comosus, native to South America, having thirty or more long, spined and pointed leaves surrounding a thick stem","True berries are fleshy fruits that come from a single flower with one ovary and typically have several seeds. Pomegranate fruit fall into this group.", "A strawberry is actually a multiple fruit which consists of many tiny individual fruits embedded in a fleshy receptacle. "]),
        DetailsModel(strSectionName: "Vegetables", arrImage: ["Beans","Cabbage","Carrot","Cauliflower","Chilli","Ginger","Peas","Spinach","Potato","Tomato"], arrImageTitle: ["Beans","Cabbage","Carrot","Cauliflower","Chilli","Ginger","Peas","Spinach","Potato","Tomato"], arrImageDescription: ["These plants produce fruits and seeds inside a pod. As legumes are nutritionally unique, they're sometimes considered their own food group.", "a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads.", "The carrot is a root vegetable, typically orange in color, though purple, black, red, white, and yellow cultivars exist, all of which are domesticated forms of the wild carrot, Daucus carota.", "auliflower is one of several vegetables in the species Brassica oleracea in the genus Brassica, which is in the Brassicaceae family.", "Chili peppers, from Nahuatl chīlli, are varieties of the berry-fruit of plants from the genus Capsicum, which are members of the nightshade family Solanaceae, cultivated for their pungency.", "Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.","pea, (Pisum sativum), also called garden pea, herbaceous annual plant in the family Fabaceae, grown virtually worldwide for its edible seeds.", "Spinach is a leafy green flowering plant native to central and western Asia. It is of the order Caryophyllales, family Amaranthaceae, subfamily Chenopodioideae.", "The potato is a starchy food, a tuber of the plant Solanum tuberosum and is a root vegetable native to the Americas.", "Tomatoes are botanically defined as fruits because they form from a flower and contain seeds. Still, they're most often utilized like a vegetable in cooking."]),
        DetailsModel(strSectionName: "Flowers", arrImage: ["Rose","Lotus","Lavender","Daisy","Flax","Hibiscus","Jasmine","Magnolia","Sunflower","Tulip",], arrImageTitle: ["Rose","Lotus","Lavender","Daisy","Flax","Hibiscus","Jasmine","Magnolia","Sunflower","Tulip",], arrImageDescription: ["A rose is either a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears.", "Nelumbo nucifera, also known as sacred lotus, Laxmi lotus, Indian lotus, or simply lotus, is one of two extant species of aquatic plant in the family Nelumbonaceae.", "Lavender (Lavandula angustifolia) is an evergreen plant native to the Mediterranean. Its flower and oil have a popular scent and are also used as medicine.", "Bellis perennis, the daisy, is a European species of the family Asteraceae, often considered the archetypal species of the name daisy.", "Flax, also known as common flax or linseed, is a flowering plant, Linum usitatissimum, in the family Linaceae.", "Hibiscus is a genus of flowering plants in the mallow family, Malvaceae. The genus is quite large, comprising several hundred species that are native to warm temperate.", "Jasmine is a genus of shrubs and vines in the olive family. It contains around 200 species native to tropical and warm temperate regions of Eurasia.", "Magnolia is a large genus of about 210 to 340 flowering plant species in the subfamily Magnolioideae of the family Magnoliaceae.", "Helianthus is a genus comprising about 70 species of annual and perennial flowering plants in the daisy family Asteraceae commonly known as sunflowers", "Tulips are a genus of spring-blooming perennial herbaceous bulbiferous geophytes. The flowers are usually large"]),
        DetailsModel(strSectionName:"Animals", arrImage: ["Lion","Tiger","Bear","Monkey","Snake","Dog","Elephant","Panda","Rabbit","Fox"], arrImageTitle: ["Lion","Tiger","Bear","Monkey","Snake","Dog","Elephant","Panda","Rabbit","Fox"], arrImageDescription: ["The lion is a large cat of the genus Panthera native to Africa and India. It has a muscular, broad-chested body; short, rounded head; round ears.", "The tiger is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur.", "Bears are carnivoran mammals of the family Ursidae. They are classified as caniforms, or doglike carnivorans.", "Monkey is a common name that may refer to most mammals of the infraorder Simiiformes, also known as the simians", "Snakes are elongated, limbless, carnivorous reptiles of the suborder Serpentes. Like all other squamates, snakes are ectothermic, amniote vertebrates covered in overlapping scales", "The dog is a domesticated descendant of the wolf. Also called the domestic dog, it is derived from the extinct Pleistocene wolf.", "Elephants are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant.", "giant panda, (Ailuropoda melanoleuca), also called panda bear, bearlike mammal inhabiting bamboo forests in the mountains of central China.", "Rabbits, also known as bunnies or bunny rabbits, are small mammals in the family Leporidae of the order Lagomorpha", "Foxes are small to medium-sized, omnivorous mammals belonging to several genera of the family Canidae."]),
        DetailsModel(strSectionName:"Birds", arrImage: ["Crow","Duck","Eagle","Hen","HummingBird","Ostrich","woodpecker","Swan","Peagon","Peacock"], arrImageTitle: ["Crow","Duck","Eagle","Hen","HummingBird","Ostrich","woodpecker","Swan","Pigeon","Peacock"], arrImageDescription: ["A crow is a bird of the genus Corvus, or more broadly a synonym for all of Corvus. Crows are generally black in colour.", " those classified in the subfamily Anatinae in the waterfowl family Anatidae—the legs are placed rearward, as in swans, rather than forward, as in geese.", "Eagle is the common name for many large birds of prey of the family Accipitridae. Eagles belong to several groups of genera, some of which are closely related.", "The chicken is a domesticated junglefowl species, with attributes of wild species such as the grey and the Ceylon junglefowl that are originally from Southeast Asia.", "It stands for intelligence, beauty, devotion, and love. These little birds are also respected as fierce fighters and defenders of their territory. Hummingbirds are a symbol of good luck.", "Ostriches are large flightless birds. They are the heaviest living birds, and lay the largest eggs of any living land animal.", "Woodpeckers get its name from how they forage for food: they tap on tree trunks with their strong beaks and chisel holes in wood.", "Swans are birds of the family Anatidae within the genus Cygnus. The swans' closest relatives include the geese and ducks.", "pigeon, any of several hundred species of birds constituting the family Columbidae (order Columbiformes). Smaller forms are usually called doves, larger forms pigeons.", "Peafowl is a common name for three bird species in the genera Pavo and Afropavo within the tribe Pavonini of the family Phasianidae, the pheasants and their allies"])
    ]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.tableView.sectionHeaderTopPadding = 0
    }
}

extension HomeProductVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.arrImagesOfProduct[section].self.strSectionName
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.arrImagesOfProduct.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell else { return UITableViewCell() }
        cell.arrOfImage = self.arrImagesOfProduct[indexPath.section].self.arrImage
        cell.arrProductTitle = self.arrImagesOfProduct[indexPath.section].self.arrImageTitle
        cell.arrProductDescription = self.arrImagesOfProduct[indexPath.section].self.arrImageDescription
        cell.navigationController = navigationController
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        view.tintColor =  #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1)
        let header = view as? UITableViewHeaderFooterView
        header?.textLabel?.textColor = UIColor.white
    }
}
