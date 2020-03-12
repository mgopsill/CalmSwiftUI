//
//  UIView+Extensions.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 12/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
