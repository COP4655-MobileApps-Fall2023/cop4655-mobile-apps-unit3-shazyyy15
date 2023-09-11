//
//  Movie.swift
//  homework2
//
//  Created by S Hassan Shaikh on 9/10/23.
//

import Foundation

struct Movie {
    let movieTitle: String
    let movieSynopsis: String
    let posterPath: String
    let backdropPath: String
    let voteAverage: Float
    let voteCount: Int
    let moviePopularity: Float
}

extension Movie {
    static var testMovies: [Movie] = [
        Movie(movieTitle: "Meg 2: The Trench",
              movieSynopsis: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
              posterPath: "/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg",
              backdropPath: "/8pjWz2lt29KyVGoq1mXYu6Br7dE.jpg",
              voteAverage: 7,
              voteCount: 1563,
              moviePopularity: 4372.097),
        Movie(movieTitle: "Barbie",
              movieSynopsis: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
              posterPath: "/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg",
              backdropPath: "/nHf61UzkfFno5X1ofIhugCPus2R.jpg",
              voteAverage: 7.4,
              voteCount: 4007,
              moviePopularity: 3486.508),
        Movie(movieTitle: "The Nun II",
              movieSynopsis: "1956 – France. A priest is murdered. An evil is spreading. The sequel to the worldwide smash hit follows Sister Irene as she once again comes face-to-face with Valak, the demon nun.",
              posterPath: "/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg",
              backdropPath: "/53z2fXEKfnNg2uSOPss2unPBGX1.jpg",
              voteAverage: 7,
              voteCount: 63,
              moviePopularity: 1812.129),
        Movie(movieTitle: "Strays",
              movieSynopsis: "When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with Bug, a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.",
              posterPath: "/n1hqbSCtyBAxaXEl1Dj3ipXJAJG.jpg",
              backdropPath: "/2ii07lSwHarg0gWnJoCYL3Gyd1j.jpg",
              voteAverage: 7.3,
              voteCount: 151,
              moviePopularity: 1691.43),
        Movie(movieTitle: "Elemental",
              movieSynopsis: "In a city where fire, water, land and air residents live together, a fiery young woman and a go-with-the-flow guy will discover something elemental: how much they have in common.",
              posterPath: "/6oH378KUfCEitzJkm07r97L0RsZ.jpg",
              backdropPath: "/4fLZUr1e65hKPPVw0R3PmKFKxj1.jpg",
              voteAverage: 7.8,
              voteCount: 1813,
              moviePopularity: 1683.227)
    ]
}

func imagePathToURL(with pathURL: String) -> URL {
    let URLStart: String = "https://image.tmdb.org/t/p/original"
    let fullImageURL: String = URLStart + pathURL
    return URL(string: fullImageURL)!
}
