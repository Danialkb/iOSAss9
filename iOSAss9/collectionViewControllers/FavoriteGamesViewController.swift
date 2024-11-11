//
//  FavoriteGamesViewConttroller.swift
//  iOSAss9
//
//  Created by мак on 08.11.2024.
//


import UIKit

struct Game: FavoriteItem {
    var title: String
    var image: UIImage
    var description: String
    var platform: String
    var releaseYear: Int
    var isFavorite: Bool
}


class FavoriteGamesViewController: FavoriteCollectionViewController<Game> {
    @IBOutlet weak var favoriteGamesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteGamesTableView.dataSource = self
        favoriteGamesTableView.delegate = self
        favoriteGamesTableView.register(FavoriteItemTableCell.nib(), forCellReuseIdentifier: FavoriteItemTableCell.identifier)
        favoriteItems = [
            Game(title: "CS2", image: UIImage(named: "cs2")!, description: "description", platform: "Steam", releaseYear: 2023, isFavorite: false),
            Game(title: "Battlefield 1", image: UIImage(named: "bf1")!, description: "description", platform: "Steam", releaseYear: 2015, isFavorite: false),
            Game(title: "Battlefield 5", image: UIImage(named: "bf5")!, description: "description", platform: "Steam", releaseYear: 2018, isFavorite: false),
            Game(title: "Metro Exodus", image: UIImage(named: "metro")!, description: "description", platform: "Steam", releaseYear: 2019, isFavorite: false),
            Game(title: "GTA V", image: UIImage(named: "gta5")!, description: "description", platform: "Steam", releaseYear: 2013, isFavorite: false),
            Game(title: "Days Gone", image: UIImage(named: "daysgone")!, description: "description", platform: "Steam", releaseYear: 2020, isFavorite: false),
            Game(title: "Sniper Elite 4", image: UIImage(named: "se4")!, description: "description", platform: "Steam", releaseYear: 2016, isFavorite: false),
            Game(title: "Witcher 3", image: UIImage(named: "witcher3")!, description: "description", platform: "Steam", releaseYear: 2012, isFavorite: false),
            Game(title: "FarCry 5", image: UIImage(named: "fc5")!, description: "description", platform: "Steam", releaseYear: 2018, isFavorite: false),
            Game(title: "Dying Light", image: UIImage(named: "dyinglight")!, description: "description", platform: "Steam", releaseYear: 2015, isFavorite: false),
        ]
    }
    
    override func showSelectedItemDetails(_ item: FavoriteItem) {
        performSegue(withIdentifier: "gameDetails", sender: item)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsViewController = segue.destination as? GameDetailsViewController {
            if let selectedGame = sender as? Game {
                detailsViewController.game = selectedGame
                detailsViewController.navigationItem.title = selectedGame.title
            }
        }
    }
    
}
