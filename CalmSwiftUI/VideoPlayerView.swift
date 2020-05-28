//
//  VideoPlayerView.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 28/05/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct VideoPlayerView: View {
    var body: some View {
        VideoPlayer().edgesIgnoringSafeArea(.all)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
