//
//  World.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 27/05/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import Foundation

struct World {
    var cache = Cache()
    var formatters = Formatters()
}

var Current = World()

struct Cache {
    var cacheImageForURL = ImageCache.shared.cache
    var loadImage = ImageCache.shared.loadImage(for:)
}

struct Formatters {
    var dateFormatterForString = FormattersFactory.dateFormatter(for:)
}
