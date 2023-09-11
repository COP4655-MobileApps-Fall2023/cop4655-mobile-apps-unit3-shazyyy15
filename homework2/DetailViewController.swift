//
//  DetailViewController.swift
//  homework2
//
//  Created by S Hassan Shaikh on 9/10/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    @IBOutlet weak var voteAverage: UILabel!
    @IBOutlet weak var voteCount: UILabel!
    @IBOutlet weak var popularity: UILabel!
    @IBOutlet weak var movieBackdrop: UIImageView!
    @IBOutlet weak var synopsis: UILabel!
    
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()
        Nuke.loadImage(with: imagePathToURL(with: movie.backdropPath), into: movieBackdrop)
        voteAverage.text = String(movie.voteAverage) + "/10 Vote Average"
        voteCount.text = String(movie.voteCount) + " Votes"
        popularity.text = String(movie.moviePopularity) + " Popularity"
        synopsis.text = movie.movieSynopsis

    }
}
