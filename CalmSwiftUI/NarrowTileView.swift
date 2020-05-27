//
//  NarrowTileView.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 12/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct NarrowTileView: View {
    let meditation: Meditation
    var body: some View {
        ZStack {
            LoadableImage(url: meditation.imageUrl)
            HStack {
                VStack {
                Text(meditation.duration)
                    .padding([.leading, .trailing], 8)
                    .padding([.top, .bottom], 4)
                    .font(Font.system(size: 10))
                    .foregroundColor(.white)
                    .background(Color.calmDarkGray.opacity(0.7))
                    .clipShape(Capsule())
                Spacer()
                }
                Spacer()
            }.padding(10)
            
            VStack {
                Spacer()
                Text(meditation.title)
                    .frame(width: 200)
                    .padding([.bottom, .top], 8)
                    .font(Font.system(size: 12))
                    .foregroundColor(.white)
                    .background(Color.calmDarkGray.opacity(0.7))
            }
                
        }.frame(width: 200, height: 250)
        .cornerRadius(15)
    }
}

struct NarrowTileView_Previews: PreviewProvider {
    static var previews: some View {
        NarrowTileView(meditation: Meditation.fake)
    }
}
