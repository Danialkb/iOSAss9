//
//  FavoriteGameTableCell.swift
//  iOSAss9
//
//  Created by мак on 08.11.2024.
//

import UIKit

class FavoriteItemTableCell: UITableViewCell {
    static let identifier = "tableCell"
        
    @IBOutlet weak var gameImageView: UIImageView!
    
    @IBOutlet weak var gameTitleLabel: UILabel!
            
    func configure(_ gameImage: UIImage, _ gameTitle: String) {
        gameImageView.image = gameImage
        gameTitleLabel.text = gameTitle
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "FavoriteItemTableCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

