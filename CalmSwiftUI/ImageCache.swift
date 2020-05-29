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
    private init() { }
    static let shared: ImageCache = ImageCache()

    private let imageCache = NSCache<AnyObject, AnyObject>()

    func cache(_ image: Image, for key: URL) {
        let imageToCache = image as AnyObject
        let key = key as AnyObject
        imageCache.setObject(imageToCache, forKey: key)
    }

    func loadImage(for key: URL) -> Image? {
        return imageCache.object(forKey: key as AnyObject) as? Image
    }
}

final class ReactiveImageCache {
    private init() { }
    static let shared: ReactiveImageCache = ReactiveImageCache()

    private let imageCache = NSCache<AnyObject, AnyObject>()

    func cache(_ image: Image, for key: URL) {
        let imageToCache = image as AnyObject
        let key = key as AnyObject
        imageCache.setObject(imageToCache, forKey: key)
    }
    
    func loadImage(for key: URL) -> Future<Image, Error> {
        return Future<Image, Error> { promise in
            if let image = self.imageCache.object(forKey: key as AnyObject) as? Image {
                promise(.success(image))
            } else {
                promise(.failure(ImageCacheError.noCachedImage))
            }
        }
    }
    
    enum ImageCacheError: Error {
        case noCachedImage
    }
}
