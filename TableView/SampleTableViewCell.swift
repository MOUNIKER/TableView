//
//  SampleTableViewCell.swift
//  TableView
//
//  Created by Siva Mouniker  on 24/05/23.
//

import UIKit

class SampleTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sampleImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
