//
//  VideoPlayer.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 28/05/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI
import AVKit
import AVFoundation

struct VideoPlayer: UIViewRepresentable {
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<VideoPlayer>) {
    }

    func makeUIView(context: Context) -> UIView {
        return LoopingPlayerUIView(frame: .zero)
    }
}


final class LoopingPlayerUIView: UIView {
    private let playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    override init(frame: CGRect) {
        super.init(frame: frame)

        let fileUrl = Bundle.main.url(forResource: "mountains", withExtension: "mp4")!
        let asset = AVAsset(url: fileUrl)
        let item = AVPlayerItem(asset: asset)
        
        let player = AVQueuePlayer()
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)

        playerLooper = AVPlayerLooper(player: player, templateItem: item)
        player.play()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}
