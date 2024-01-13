//
//  NotificationCell.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/13.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image("Shibainu")
                .resizable()
                .scaledToFill()
                .frame(width: 40,height: 40)
                .clipShape(Circle())
            
            Text("柴犬")
                .font(.system(size: 14,weight: .semibold))
            +
            Text("フォローしてクレメンス")
                .font(.system(size: 15))
            +
            Text("2H")
                .foregroundColor(.gray)
                .font(.system(size: 12))
            
            Spacer()
            
            Text("Follow")
                .font(.system(size: 14,weight: .semibold))
                .frame(width: 100,height: 32)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(3)
                .overlay{
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.gray, lineWidth: 1)
                }
            
        }
    }
}

#Preview {
    NotificationCell()
}
