//
//  ViewController.swift
//  RestaurantsIBM
//
//  Created by DragosRotaru on 28/02/2020.
//  Copyright © 2020 DragosRotaru. All rights reserved.
//

import UIKit

class RestaurantsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var restaurantArray: [RestaurantModel] = [RestaurantModel(id: "0", name: "The artist", description: "We welcome you with a modern and elegant ambiance with an artistic touch…", image: ""),
                                                      RestaurantModel(id: "1", name: "Stradale", description: "Street food, live cooking și felurile tale preferate, reinterpretate", image: ""),
                                                      RestaurantModel(id: "2", name: "Bocca Lupo", description: "Experiență autentic italiană", image: ""),
                                                      RestaurantModel(id: "3", name: "Osho", description: "No fancy plating, no fine dining, no molecular cuisine. We love steaks", image: ""),
                                                      RestaurantModel(id: "4", name: "Fiori di latte", description: "Locul în care atunci când o poveste se încheie, alta începe din ea", image: ""),
                                                      RestaurantModel(id: "5", name: "Amalgam", description: "Noul concept Zexe, restaurantul Amalgam imbina gastronomia romaneasca cu deserturile fine, pizza artizanala cu florile din floraria Zexe.", image: ""),
                                                      RestaurantModel(id: "6", name: "Trickshot", description: "Experimenteaza preparate culinare rafinate si jocuri ca bowling, biliard, darts in același loc", image: "")]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.estimatedRowHeight = UITableView.automaticDimension
        // Do any additional setup after loading the view.
    }


}

extension RestaurantsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        restaurantArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let restaurantCell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell") as? RestaurantTableViewCell else {
            return UITableViewCell()
        }
        let model = restaurantArray[indexPath.row]
        restaurantCell.nameLabel.text = model.name
        restaurantCell.descriptionLabel.text = model.description
        restaurantCell.restaurantImageView.image = UIImage(named: "osho")
        
        return restaurantCell
    }
    
    
}

extension RestaurantsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
