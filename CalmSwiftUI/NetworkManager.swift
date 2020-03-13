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
    var didChange = PassthroughSubject<NetworkManager, Never>()
    var meditations = [Meditation]() {
        didSet {
            didChange.send(self)
        }
    }
    
    init() {
        let bundle = Bundle(for: type(of: self))
        guard let path = bundle.path(forResource: "meditations", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        guard let data = try? Data(contentsOf: url) else { return }
        guard let response = try? JSONDecoder().decode(MeditationsResponseModel.self, from: data) else { return }
        DispatchQueue.main.async {
            self.meditations = response.meditations
        }
    }
}
