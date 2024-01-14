//
//  ProfileView.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/10.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack (spacing: 32){
                ProfileHeaderView()
                    .padding()
                
                PostGridView()
            }
            .padding(.top)
        }
    }
}

#Preview {
    ProfileView()
}
