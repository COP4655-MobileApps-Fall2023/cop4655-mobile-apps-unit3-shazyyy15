//
//  MovieCell.swift
//  homework2
//
//  Created by S Hassan Shaikh on 9/10/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.movieTitle
        synopsisLabel.text = movie.movieSynopsis

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with:imagePathToURL(with: movie.posterPath), into: movieImageView)
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
