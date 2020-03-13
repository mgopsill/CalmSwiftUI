//
//  WideTileRow.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 13/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct WideTileRow: View {
    var body: some View {
        VStack {
            CalmSectionHeader()
            WideTileView()
            WideTileView()
        }
    }
}

struct WideTileRow_Previews: PreviewProvider {
    static var previews: some View {
        WideTileRow()
    }
}
