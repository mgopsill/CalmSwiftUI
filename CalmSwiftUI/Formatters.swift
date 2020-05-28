//
//  Formatters.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 28/05/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import Foundation

final class FormattersFactory {
    static func dateFormatter(for string: String) -> DateFormatter {
        if let formatter = formatters.first(where: { $0.dateFormat == string }) {
            return formatter
        } else {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = string
            formatters.append(dateFormatter)
            return dateFormatter
        }
    }
    
    private static var formatters: [DateFormatter] = []
}
