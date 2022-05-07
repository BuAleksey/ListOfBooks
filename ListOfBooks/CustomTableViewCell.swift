//
//  CustomTableViewCell.swift
//  ListOfBooks
//
//  Created by Buba on 07.05.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageBook: UIImageView!
    @IBOutlet weak var nameBook: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
   
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
