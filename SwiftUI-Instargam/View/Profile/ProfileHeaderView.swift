//
//  ProfileHeaderView.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/14.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("Shibainu")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80,height: 80)
                    .clipShape(Circle())
                    .padding(.leading,16)
                
                Spacer()
                
                HStack(spacing: 16){
                    UserStates(value: 210, title: "Posts")
                    UserStates(value: 210, title: "Followers")
                    UserStates(value: 210, title: "Following")
                }
                .padding(.trailing,32)
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}
