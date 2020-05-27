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
            .map {
                let decode = JSONDecoder()
                let x = try! decode.decode(MeditationsResponseModel.self, from: $0.data)
                print($0.data)
                print(x)
                return $0.data }
            .decode(type: MeditationsResponseModel.self, decoder: JSONDecoder())
            .map {
                print("got here")
                print("got \($0.meditations)")

                return $0.meditations
                
        }
            .receive(on: RunLoop.main)
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .assign(to: \.meditations, on: self)
    }
}
