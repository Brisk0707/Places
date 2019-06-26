//
//  MainViewController.swift
//  Places
//
//  Created by Борис Крисько on 6/24/19.
//  Copyright © 2019 Borys Krisko. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
    "Le Grill", "Репортеръ", "Мамой клянусь", "Мыши Бляхера",
    "Varburger", "Артист", "Puri Chveni", "Хан-Чинар",
    "Casta", "Confetti", "Roadhouse", "Double bar",
    "Эдбрург", "MAFIA", "Lumber"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])

        return cell
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
