//
//  UserStartView.swift
//  Instagram
//
//  Created by Sariye Yaman on 4.12.2024.
//

import SwiftUI

struct UserStartView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 72)
    }
}

#Preview {
    UserStartView(value: 12, title: "Posts")
}
