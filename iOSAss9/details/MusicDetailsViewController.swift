//
//  MusicDetailsViewControllr.swift
//  iOSAss9
//
//  Created by мак on 11.11.2024.
//

import UIKit

class MusicDetailsViewController: UIViewController {
    var song: Song!
    
    @IBOutlet weak var songImage: UIImageView!
    
    @IBOutlet weak var singerLabel: UILabel!
    
    @IBOutlet weak var songReleaseYear: UILabel!
    
    @IBOutlet weak var songDescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songImage.image = song.image
        singerLabel.text = song.singer
        songReleaseYear.text = String(song.releaseYear)
        songDescription.text = song.description
    }
}
