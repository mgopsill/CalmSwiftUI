//
//  NarrowTileRow.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 13/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct NarrowTileRow: View {
    var body: some View {
        VStack {
            CalmSectionHeader().padding([.leading])
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0..<4) { _ in
                        NarrowTileView()
                    }
                }.padding([.leading, .trailing])
            }
        }.listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
    }
}

struct NarrowTileRow_Previews: PreviewProvider {
    static var previews: some View {
        NarrowTileRow()
    }
}
