//
//  LoadableImage.swift
//  MarvelSwiftUI
//
//  Created by Mike Gopsill on 18/03/2020.
//  Copyright © 2020 Ford. All rights reserved.
//

import SwiftUI

struct LoadableImage: View {
    @ObservedObject var imageLoader: ImageLoader
    
    init(url: URL) {
        imageLoader = ImageLoader(url: url)
    }
    
    var body: some View {
        if let image = imageLoader.image {
            return AnyView(
                image.resizable()
            )
        } else {
            return AnyView(
                ActivityIndicator(style: .medium)
            )
        }
    }
}

struct LoadableImage_Previews: PreviewProvider {
    static var previews: some View {
        LoadableImage(url: URL(string: "https://picsum.photos/200")!)
    }
}
