//
//  TabBar.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 12/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    
    @Binding var index: Int
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image(systemName: "house.fill")
                    Text("For You").font(.system(size: 11))
                }
                .foregroundColor(self.index == 0 ? .white : .calmLightGray)
                .onTapGesture {
                    self.index = 0
                }
                
                Spacer()
                
                VStack {
                    Image(systemName: self.index == 1 ? "moon.fill": "moon")
                    Text("Sleep").font(.system(size: 11))
                }
                .foregroundColor(self.index == 1 ? .white : .calmLightGray)
                .onTapGesture {
                    self.index = 1
                }
                
                Spacer()
                
                VStack {
                    Image(systemName: self.index == 2 ? "largecircle.fill.circle": "smallcircle.circle")
                    Text("Meditate").fontWeight(.light).font(.system(size: 11))
                }
                .foregroundColor(self.index == 2 ? .white : .calmLightGray)
                .onTapGesture {
                    self.index = 2
                }
                
                Spacer()
            
                VStack {
                    Image(systemName: "music.note")
                    Text("Music").fontWeight(.light).font(.system(size: 11))
                }
                .foregroundColor(self.index == 3 ? .white : .calmLightGray)
                .onTapGesture {
                    self.index = 3
                }
                
                Spacer()
                
                VStack {
                    Image(systemName: "line.horizontal.3")
                    Text("More").fontWeight(.light).font(.system(size: 11))
                }.foregroundColor(self.index == 4 ? .white : .calmLightGray)
                    .onTapGesture {
                    self.index = 4
                }
                
            }
            .padding([.leading, .trailing], 20)
            
            Spacer().frame(height: 30)
        }
        .padding(.top, 10)
        .frame(width: UIScreen.main.bounds.width)
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .calmDarkBlue]), startPoint: .top, endPoint: .bottom).opacity(0.95))
        .foregroundColor(.calmLightGray)
        .animation(.default)
        .cornerRadius(20, corners: [.topLeft, .topRight])
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(index: .constant(0))
    }
}
