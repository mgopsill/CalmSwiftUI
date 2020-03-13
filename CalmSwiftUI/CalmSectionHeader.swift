//
//  CalmSectionHeader.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 13/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct CalmSectionHeader: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "smiley.fill").resizable().frame(width: 22, height: 22)
                Text("Good Morning, Mike")
            }
            .font(Font.system(size: 12))
            .padding([.bottom, .top], 5)
            .padding([.leading, .trailing], 8)
            .foregroundColor(.white)
            .background(Color.calmDarkGray.opacity(0.95))
            .cornerRadius(40)
            
            Spacer()
        }.padding([.top], 8)
    }
}

struct CalmSectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        CalmSectionHeader()
    }
}
    
