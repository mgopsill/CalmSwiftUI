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
}

extension Meditation {
    var imageUrl: URL {
        return URL(string: imageURL)!
    }
}
