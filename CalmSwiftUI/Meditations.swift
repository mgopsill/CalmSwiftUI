//
//  Meditations.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 13/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import Foundation

struct MeditationsResponseModel: Codable {
    let meditations: [Meditation]
}

struct Meditation: Codable, Identifiable {
    let id: Int
    let title, duration, author: String
    let imageURL: String
    let type: MeditationType
}

extension Meditation {
    var imageUrl: URL {
        return URL(string: imageURL)!
    }
    
    static var fake: Meditation {
        return Meditation(id: 2,
                          title: "Title",
                          duration: "1h 0m",
                          author: "Steve",
                          imageURL: "https://picsum.photos/200",
                          type: .daily)
    }
}

enum MeditationType: String, Codable {
    case daily
    case recent
    case quick
    case fitness
    case sleep
    case music
}
