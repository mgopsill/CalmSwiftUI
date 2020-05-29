//
//  ImageCache.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 27/05/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import Combine
import SwiftUI

final class ImageCache {
    var cacheImage = PassthroughSubject<(Image, URL), Never>()
    
    static let shared: ImageCache = ImageCache()
    
    private let imageCache = NSCache<AnyObject, AnyObject>()
    private var cancellables = Set<AnyCancellable>()
    
    private init() {
        cacheImage.sink { (image, url) in
            let imageToCache = image as AnyObject
            let key = url as AnyObject
            self.imageCache.setObject(imageToCache, forKey: key)
        }.store(in: &cancellables)
    }
    
    func loadImage(for key: URL) -> Just<Image?> {
        let image = self.imageCache.object(forKey: key as AnyObject) as? Image
        return Just(image)
    }
}
