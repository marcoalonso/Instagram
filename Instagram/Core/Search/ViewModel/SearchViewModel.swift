//
//  SearchViewModel.swift
//  Instagram
//
//  Created by Marco Alonso Rodriguez on 08/08/23.
//

import Foundation

class SearchViewModel : ObservableObject {
    @Published var users = [User]()
    
    init(){
        Task { try await fetchAllUsers() }
    }
    
    @MainActor
    func fetchAllUsers() async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}
