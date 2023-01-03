//
//  PostsTableViewCell.swift
//  Demo
//
//  Created by Mac on 02/01/2023.
//

import UIKit

class PostsTableViewCell: UITableViewCell {

    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with id: Int, title: String) {
        idLabel.text = "\(id)"
        titleLabel.text = title
    }
   
}
