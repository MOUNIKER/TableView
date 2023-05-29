//
//  ViewController.swift
//  TableView
//
//  Created by Siva Mouniker  on 24/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sampleTableview: UITableView!
    var namesArray:[String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setUpTableview()
        namesArray = ["a","b","c"]
    }
    
    func setUpTableview() {
        sampleTableview.delegate = self
        sampleTableview.dataSource = self
        sampleTableview.register(UINib(nibName: "SampleTableViewCell", bundle: nil), forCellReuseIdentifier: "SampleTableViewCell")
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return namesArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "SampleTableViewCell", for: indexPath) as? SampleTableViewCell {
                cell.nameLabel.text = namesArray?[indexPath.row]
                cell.sampleImageView.image = UIImage(named: "sample")
                return cell
            }
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let sampleHeaderView = UIView()
//        sampleHeaderView.backgroundColor = .systemPink
//        return sampleHeaderView
//    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "First"
    }
    
    
}






