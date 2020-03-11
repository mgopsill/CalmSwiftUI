//
//  ContentView.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 10/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let colors = [Color.red, Color.yellow, Color.blue, Color.black]
        let random = Int.random(in: 0...3)
        return colors[random]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
