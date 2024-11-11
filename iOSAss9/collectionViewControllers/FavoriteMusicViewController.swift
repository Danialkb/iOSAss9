//
//  FavoriteMusicViewController.swift
//  iOSAss9
//
//  Created by мак on 08.11.2024.
//


import UIKit

struct Song: FavoriteItem {
    var title: String
    var singer: String
    var image: UIImage
    var description: String
    var releaseYear: Int
}


class FavoriteMusicViewController: FavoriteCollectionViewController<Song> {
    
    @IBOutlet weak var favoriteMusicTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteMusicTableView.dataSource = self
        favoriteMusicTableView.delegate = self
        favoriteMusicTableView.register(FavoriteItemTableCell.nib(), forCellReuseIdentifier: FavoriteItemTableCell.identifier)
        favoriteItems = [
            Song(title: "In The End", singer: "Linkin Park", image: UIImage(named: "intheend")!, description: "song description", releaseYear: 2006),
            Song(title: "Going Under", singer: "Evanescence", image: UIImage(named: "goingunder")!, description: "song description", releaseYear: 2006),
            Song(title: "Faint", singer: "Linkin Park", image: UIImage(named: "faint")!, description: "song description", releaseYear: 2008),
            Song(title: "Bring Me To Life", singer: "Evanescence", image: UIImage(named: "bring_me_to_life")!, description: "song description", releaseYear: 2011),
            Song(title: "Группа крови", singer: "Кино", image: UIImage(named: "gruppa_krovi")!, description: "song description", releaseYear: 1998),
            Song(title: "Пачка сигарет", singer: "Кино", image: UIImage(named: "pachka_sigaret")!, description: "song description", releaseYear: 1998),
            Song(title: "Восьмиклассница", singer: "Кино", image: UIImage(named: "vosmiclassnica")!, description: "song description", releaseYear: 1998),
            Song(title: "My Immortal", singer: "Evanescence", image: UIImage(named: "my_immortal")!, description: "song description", releaseYear: 2011),
            Song(title: "Somewhere", singer: "Linkin Park", image: UIImage(named: "somewhere")!, description: "song description", releaseYear: 2003),
        ]
    }
    
    override func showSelectedItemDetails(_ item: FavoriteItem) {
        performSegue(withIdentifier: "musicDetails", sender: item)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsViewController = segue.destination as? MusicDetailsViewController {
            if let selectedSong = sender as? Song {
                detailsViewController.song = selectedSong
                detailsViewController.navigationItem.title = selectedSong.title
            }
        }
    }
    
}
