//
//  FavoriteFilmsViewController.swift
//  iOSAss9
//
//  Created by мак on 08.11.2024.
//

import UIKit

struct Film: FavoriteItem {
    var title: String
    var image: UIImage
    var description: String
    var director: String
    var releaseYear: Int
}


class FavoriteFilmsViewController: FavoriteCollectionViewController<Film> {
    
    @IBOutlet weak var favoriteFilmsTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteFilmsTableView.dataSource = self
        favoriteFilmsTableView.delegate = self
        favoriteFilmsTableView.register(FavoriteItemTableCell.nib(), forCellReuseIdentifier: FavoriteItemTableCell.identifier)
        favoriteItems = [
            Film(title: "Inception", image: UIImage(named: "inception")!, description: "film description", director: " Кристофер Нолан" , releaseYear: 2010),
            Film(title: "Остров Проклятых", image: UIImage(named: "ostrov")!, description: "film description", director: "Мартин Скорсезе", releaseYear: 2011),
            Film(title: "Identification", image: UIImage(named: "identification")!, description: "film description", director: "Джеймс Мэнголд",releaseYear: 2003),
            Film(title: "The Departed", image: UIImage(named: "departed")!, description: "film description", director: "Мартин Скорсезе", releaseYear: 2010),
            Film(title: "Hateful Eight", image: UIImage(named: "vosmerka")!, description: "film description", director: "Квентин Тарантино", releaseYear: 2015),
            Film(title: "Django Unchained", image: UIImage(named: "django")!, description: "film description", director: "Квентин Тарантино", releaseYear: 2012),
            Film(title: "Бешеные Псы", image: UIImage(named: "beshenie_psy")!, description: "film description", director: "Квентин Тарантино", releaseYear: 1998),
            Film(title: "Pulp Fiction", image: UIImage(named: "pulp_fiction")!, description: "film description", director: "Квентин Тарантино", releaseYear: 1995),
            Film(title: "Убить Билла", image: UIImage(named: "kill_bill")!, description: "film description", director: "Квентин Тарантино", releaseYear: 1991),
            Film(title: "Астрал", image: UIImage(named: "astral")!, description: "film description", director: "Джеймс Ван", releaseYear: 2020),
        ]
    }
    
    override func showSelectedItemDetails(_ item: FavoriteItem) {
        performSegue(withIdentifier: "filmDetails", sender: item)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsViewController = segue.destination as? FilmDetailsViewController {
            if let selectedFilm = sender as? Film {
                detailsViewController.film = selectedFilm
                detailsViewController.navigationItem.title = selectedFilm.title
            }
        }
    }
    
}

