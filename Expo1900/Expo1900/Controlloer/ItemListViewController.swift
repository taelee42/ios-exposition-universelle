//
//  ItemListViewController.swift
//  Expo1900
//
//  Created by Terry Lee on 2021/07/07.
//

import UIKit

class ItemListViewController: UIViewController {

    @IBOutlet weak var listTableView: UITableView!
    var items: [Item]?
    override func viewDidLoad() {
        super.viewDidLoad()
        items = try? JSONParser.parse(from: "items", to: [Item].self).get()
        listTableView.estimatedRowHeight = 500
        listTableView.rowHeight = UITableView.automaticDimension
    }

}

extension ItemListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as? ItemCell else {
            return UITableViewCell()
        }
        guard let cellData = items?[indexPath.row] else {
            return UITableViewCell()
        }
        cell.updateUI(data: cellData)
        
        cell.layoutIfNeeded()
        return cell
    }
}

extension ItemListViewController: UITableViewDelegate {
    
}
