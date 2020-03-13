//
//  WideTileView.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 13/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct WideTileView: View {
    var body: some View {
        HStack {
            ZStack {
                Image(systemName: "smiley")
                    .frame(minWidth: 50)
            }
            VStack(alignment: .leading) {
                Text("Daily Calm")
                    .font(Font.system(size: 15.0))
                Text("Mar 13 - Sleep")
                    .font(Font.system(size: 12.0))
            }
            Spacer()
        }
        .padding(20.0)
        .foregroundColor(.white)
        .background(Color.black.opacity(0.7))
        .cornerRadius(16.0)
    }
}

struct WideTileView_Previews: PreviewProvider {
    static var previews: some View {
        WideTileView()
    }
}
