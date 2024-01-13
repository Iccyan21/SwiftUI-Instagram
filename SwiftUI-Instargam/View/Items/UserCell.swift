//
//  UserCell.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/13.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image("Shibainu")
                .resizable()
                .scaledToFill()
                .frame(width: 48,height: 48)
                .clipped()
                .clipShape(Circle())
            
            VStack{
                Text("柴犬")
                    .font(.system(size: 14,weight: .semibold))
                
                Text("Shimainu")
                    .font(.system(size: 14))
                
            }
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
