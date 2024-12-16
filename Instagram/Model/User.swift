//
//  User.swift
//  Instagram
//
//  Created by Sariye Yaman on 6.12.2024.
//

import Foundation
import FirebaseAuth

struct User: Identifiable,Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User{
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "sariye", profileImageUrl: nil, fullname:"Sariye" ,bio: "Software Engineering",email: "sariye1@gmail.com"),
        .init(id: NSUUID().uuidString, username: "sariyee", profileImageUrl: nil, fullname:"Sariye Yaman" ,bio: "Software Engineering",email: "sariye2@gmail.com"),
        .init(id: NSUUID().uuidString, username: "sariyeeee", profileImageUrl: nil, fullname:"Sariye" ,bio: "Software Engineering",email: "sariye3@gmail.com"),
        .init(id: NSUUID().uuidString, username: "sariyeee", profileImageUrl: nil, fullname:"Sariye Yaman" ,bio: "Software Engineering",email: "sariye4@gmail.com")
    ]
}
