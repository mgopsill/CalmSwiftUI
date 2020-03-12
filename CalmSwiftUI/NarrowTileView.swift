//
//  NarrowTileView.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 12/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct NarrowTileView: View {
    var body: some View {
        ZStack {
            Color.green
            HStack {
                VStack {
                Text("1h 01m")
                    .padding([.leading, .trailing], 8)
                    .padding([.top, .bottom], 4)
                    .font(Font.system(size: 10))
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.7))
                    .clipShape(Capsule())
                Spacer()
                }
                Spacer()
            }.padding(10)
            
            VStack {
                Spacer()
                Text("Meditation with a Legend")
                    .frame(width: 190)
                    .padding([.bottom, .top], 8)
                    .font(Font.system(size: 10))
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.7))
            }
                
        }.frame(width: 180, height: 230)
        .cornerRadius(15)
    }
}

struct NarrowTileView_Previews: PreviewProvider {
    static var previews: some View {
        NarrowTileView()
    }
}
