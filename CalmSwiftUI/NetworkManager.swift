//
//  NetworkManager.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 13/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import Combine
import SwiftUI

final class NetworkManager: ObservableObject {
    @Published var meditations: [Meditation] = []
    
    var cancellable: AnyCancellable?

    init() {
        let bundle = Bundle(for: type(of: self))
        guard let path = bundle.path(forResource: "meditations", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map {$0.data }
            .decode(type: MeditationsResponseModel.self, decoder: JSONDecoder())
            .map { $0.meditations }
            .receive(on: RunLoop.main)
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .assign(to: \.meditations, on: self)
    }
}
