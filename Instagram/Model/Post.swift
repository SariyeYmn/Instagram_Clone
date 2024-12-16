//
//  Post.swift
//  Instagram
//
//  Created by Sariye Yaman on 6.12.2024.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable{
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post{
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "deneme",
            likes: 100,
            imageUrl: "verst",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "deneme",
            likes: 100,
            imageUrl: "hande",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[1]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "deneme",
            likes: 100,
            imageUrl: "sariye",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[2]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "deneme",
            likes: 100,
            imageUrl: "sariye2",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "deneme",
            likes: 100,
            imageUrl: "sariye",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[1])
    ]
    
}
