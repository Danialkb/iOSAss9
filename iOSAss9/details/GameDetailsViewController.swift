//
//  GameDetailsViewController.swift
//  iOSAss9
//
//  Created by мак on 08.11.2024.
//

import UIKit

class GameDetailsViewController: UIViewController {
    var game: Game!
    @IBOutlet weak var gameImage: UIImageView!
        
    @IBOutlet weak var gameReleaseYear: UILabel!
    
    @IBOutlet weak var gameDescription: UITextField!
    
    @IBOutlet weak var gamePlatform: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gameImage.image = game.image
        gamePlatform.text = game.platform
        gameReleaseYear.text = String(game.releaseYear)
        gameDescription.text = game.description
    }
}
