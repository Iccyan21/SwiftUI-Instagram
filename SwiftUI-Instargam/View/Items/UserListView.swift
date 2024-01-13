//
//  UserListView.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/13.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ..< 10){ _ in
                    UserCell()
                        .padding(.leading,8)
                }
            }
        }
    }
}

#Preview {
    UserListView()
}
