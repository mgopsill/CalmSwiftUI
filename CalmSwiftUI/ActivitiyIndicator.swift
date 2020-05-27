//
//  ActivitiyIndicator.swift
//  MarvelSwiftUI
//
//  Created by Mike Gopsill on 17/03/2020.
//  Copyright © 2020 Ford. All rights reserved.
//

import SwiftUI

/* Provides the loading animation */
struct ActivityIndicator: UIViewRepresentable {
    let style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        uiView.startAnimating()
    }
}
