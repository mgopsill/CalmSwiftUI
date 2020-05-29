//
//  ImageLoader.swift
//  MarvelSwiftUI
//
//  Created by Mike Gopsill on 18/03/2020.
//  Copyright © 2020 Ford. All rights reserved.
//

import Combine
import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image?
    
    private var cancellables: Set<AnyCancellable> = []
    
    init(url: URL) {
        let getCachedImage = Current.cache.loadImage(url)
        let fetchImage = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .compactMap { UIImage(data: $0) }
            .map { Image(uiImage: $0) }
            .receive(on: RunLoop.main)
            .replaceError(with: nil)
            .eraseToAnyPublisher()
            .compactMap { $0 }
        
        getCachedImage
            .compactMap { $0 }
            .assign(to: \.image, on: self)
            .store(in: &cancellables)
        
        getCachedImage
            .filter { $0 == nil }
            .flatMap({ _ in fetchImage })
            .sink { image in
                self.image = image
                Current.cache.cacheImageForURL.send((image, url))
        }.store(in: &cancellables)
    }
}
