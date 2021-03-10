//
//  CategoryViewController.swift
//  BlackStar-Viper
//
//  Created by Maksym on 03.03.2021.
//

import UIKit

class CategoryViewController: UITableViewController {
    
    var presenterInput: CategoryPresenterInput = CategoryPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenterInput.output = self
        presenterInput.creator()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return presenterInput.category.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Category", for: indexPath)
        cell.textLabel?.text = presenterInput.category[indexPath.row]

        return cell
    }
  
}
extension CategoryViewController: CategoryPresenterOutput {
    func getCategory(category: [String]) {
        presenterInput.category = category
        tableView.reloadData()
    }
}
