//
//  AppView.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 11/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("For You")
            }
            ContentView()
                .tabItem {
                    Image(systemName: "moon")
                    Text("Sleep")
            }
            ContentView()
                .tabItem {
                    Image(systemName: "largecircle.fill.circle")
                    Text("Meditate")
            }
            ContentView()
                .tabItem {
                    Image(systemName: "music.note")
                    Text("Music")
            }
            ContentView()
                .tabItem {
                    Image(systemName: "line.horizontal.3")
                    Text("More")
            }
        }
        .onAppear() {
            UITabBar.appearance().shadowImage = UIImage()
            UITabBar.appearance().backgroundImage = UIImage()
            UITabBar.appearance().unselectedItemTintColor = .calmLightGray
            UITabBar.appearance().backgroundColor = .calmDarkBlue
        }
        .accentColor(.white)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
    
}
extension UIColor {
    static let calmLightGray = UIColor(red: 178 / 256, green: 197 / 256, blue: 219 / 256, alpha: 1.0)
    static let calmDarkBlue = UIColor(red: 57 / 256, green: 81 / 256, blue: 169 / 256, alpha: 1.0)
}
