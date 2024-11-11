//
//  FilmDetailsViewController.swift
//  iOSAss9
//
//  Created by мак on 11.11.2024.
//

import UIKit

class FilmDetailsViewController: UIViewController {
    var film: Film!
    
    @IBOutlet weak var filmImage: UIImageView!
    
    @IBOutlet weak var filmDirector: UILabel!
    
    @IBOutlet weak var filmReleaseYear: UILabel!
    
    @IBOutlet weak var filmDescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        filmImage.image = film.image
        filmDirector.text = film.director
        filmReleaseYear.text = String(film.releaseYear)
        filmDescription.text = film.description
    }
}
