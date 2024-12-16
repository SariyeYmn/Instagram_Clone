//
//  ProfileView.swift
//  Instagram
//
//  Created by Sariye Yaman on 4.12.2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
        ScrollView {
            //header
            ProfileHeaderView(user: user)
            //post grid view
            PostGridView(user: user)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
