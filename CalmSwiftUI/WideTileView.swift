//
//  WideTileView.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 13/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct WideTileView: View {
    let meditation: Meditation
    let dateFormatter = Current.formatters.dateFormatterForString("MMM d")
    
    var body: some View {
        HStack {
            ZStack {
                LoadableImage(url: self.meditation.imageUrl)
                    .frame(maxWidth: 80, maxHeight: 80)
            }
            VStack(alignment: .leading) {
                Text(meditation.title)
                    .font(Font.system(size: 15.0))
                Text("\(dateFormatter.string(from: meditation.date)) - \(meditation.type.rawValue)")
                    .font(Font.system(size: 12.0))
            }
            .padding(20)
            Spacer()
        }
        .foregroundColor(.white)
        .background(Color.black.opacity(0.7))
        .cornerRadius(16.0)
    }
}

struct WideTileView_Previews: PreviewProvider {
    static var previews: some View {
        WideTileView(meditation: Meditation.fake)
    }
}
