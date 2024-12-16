//
//  FeedViewModel.swift
//  Instagram
//
//  Created by Sariye Yaman on 12.12.2024.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task { try await fetchPosts() }
    }
    
    @MainActor
    func fetchPosts() async throws {
        self.posts = try await PostService.fetchFeedPosts()
        
    }
}