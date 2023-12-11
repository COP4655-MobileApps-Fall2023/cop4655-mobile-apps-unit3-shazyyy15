//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "A place for a camping trip",
                 description: "Where would you go to stay the night with nature?"),
            Task(title: "A place with a wonderful view",
                 description: "What beautiful sight does the world have to offer?"),
            Task(title: "A place with a waterfall.",
                 description: "The beauty of a mass of water flowing down a cliffside, where can it be seen?"),
            Task(title: "A place for tourism.",
                 description: "Where can one who travels explore?")
        ]
    }
}
