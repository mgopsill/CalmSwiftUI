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
        // Create a url session publisher that will fetch data
        let fetchImageFromNetwork = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .compactMap { UIImage(data: $0) }
            .map { Image(uiImage: $0) }
            .receive(on: RunLoop.main)
            .replaceError(with: nil)
            .eraseToAnyPublisher()
            .compactMap { $0 }
            .multicast { PassthroughSubject<Image, Never>() }
        // ☝️ multicast creates a subject, allowing you to subscribe multiple times to one stream
        // call .connect() on the original stream to start the stream
        
        // below two subcribes, one sets the image and another caches the image
        fetchImageFromNetwork
            .sink { self.image = $0 }
            .store(in: &cancellables)
        fetchImageFromNetwork
            .sink { ReactiveImageCache.shared.cache($0, for: url) }
            .store(in: &cancellables)

        // this loads the image
        ReactiveImageCache.shared.loadImage(for: url)
            .sink(receiveCompletion: { _ in
                // if loading image from cache fails we come here and start network
                fetchImageFromNetwork.connect().store(in: &self.cancellables)
            }, receiveValue: { image in
                // if we get an image we simply set it
                self.image = image
            })
            .store(in: &cancellables)
    }
}
