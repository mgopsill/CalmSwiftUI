//
//  WideTileRow.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 13/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct WideTileRow: View {
    let meditations: [Meditation]
    var body: some View {
        VStack {
            CalmSectionHeader()
            ForEach(meditations) {
                WideTileView(meditation: $0)
            }
        }
    }
}

struct WideTileRow_Previews: PreviewProvider {
    static var previews: some View {
        WideTileRow(meditations: [Meditation.fake])
    }
}
