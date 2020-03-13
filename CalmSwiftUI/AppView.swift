//
//  AppView.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 11/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct AppView: View {
    @State var networkManager = NetworkManager()
    @State var index = 0
    
    var body: some View {
        ZStack {
            ZStack {
                if self.index == 0 {
                    List {
                        Text(" ").frame(height: 500).listRowBackground(Color.blue)
                        WideTileRow()
                        NarrowTileRow()
                        NarrowTileRow()
                        NarrowTileRow()
                    }
                    .background(Color.blue)
                } else if self.index == 1 {
                    Color.red
                } else if self.index == 2 {
                    Color.yellow
                } else if self.index == 3 {
                    Color.orange
                } else if self.index == 4 {
                    Color.white
                }
            }
            VStack {
                Spacer()
                TabBar(index: $index)
                    .cornerRadius(20, corners: [.topLeft, .topRight])
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear() {
            UITableView.appearance().backgroundColor = .clear
            UITableView.appearance().separatorColor = .clear
            UITableViewCell.appearance().backgroundColor = .clear
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
