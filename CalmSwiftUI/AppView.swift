//
//  AppView.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 11/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct AppView: View {
    @State var index = 0
    
    var body: some View {
        ZStack {
            ZStack {
                if self.index == 0 {
                    List {
                        Text(" ").frame(height: 200).listRowBackground(Color.red)
                        Text(" ").frame(height: 200).listRowBackground(Color.blue)
                        Text(" ").frame(height: 200).listRowBackground(Color.orange)
                        Text(" ").frame(height: 200).listRowBackground(Color.yellow)
                        
                        Text(" ").frame(height: 200).listRowBackground(Color.red)
                        Text(" ").frame(height: 200).listRowBackground(Color.blue)
                        Text(" ").frame(height: 200).listRowBackground(Color.orange)
                        Text(" ").frame(height: 200).listRowBackground(Color.yellow)
                    }
                } else if self.index == 1 {
                    Color.red.edgesIgnoringSafeArea(.all)
                } else if self.index == 2 {
                    Color.yellow.edgesIgnoringSafeArea(.all)
                } else if self.index == 3 {
                    Color.orange.edgesIgnoringSafeArea(.all)
                } else if self.index == 4 {
                    Color.white.edgesIgnoringSafeArea(.all)
                }
            }
            VStack {
                Spacer()
                TabBar(index: $index)
                    .cornerRadius(20, corners: [.topLeft, .topRight])
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
