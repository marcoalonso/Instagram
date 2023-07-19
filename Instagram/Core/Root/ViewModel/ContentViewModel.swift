//
//  ContentViewModel.swift
//  Instagram
//
//  Created by Marco Alonso Rodriguez on 19/07/23.
//

import Foundation
import Firebase
import Combine

class ContentViewModel: ObservableObject {
    private let service = AuthService.shared
    private var cancelables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        setupSubscribers()
    }
    
    func setupSubscribers(){
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
    }
}
