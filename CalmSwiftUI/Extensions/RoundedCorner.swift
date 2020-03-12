//
//  RoundedCorner.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 12/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
