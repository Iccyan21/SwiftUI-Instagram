//
//  FeedCall.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/10.
//

import SwiftUI

struct FeedCall: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("Shibainu")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36,height: 36)
                    .clipped()
                    .cornerRadius(18)
                Text("柴犬")
                    .font(.system(size: 14,weight: .semibold))
            }
            .padding([.leading,.bottom],8)
            
            Image("Shibainu")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            
            HStack(spacing: 16){
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.black)
                    .frame(width: 20,height: 20)
                    .font(.system(size: 20))
                    .padding(4)
                
                Image(systemName: "bubble.right")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.black)
                    .frame(width: 20,height: 20)
                    .font(.system(size: 20))
                    .padding(4)
                
                Image(systemName: "paperplane")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.black)
                    .frame(width: 20,height: 20)
                    .font(.system(size: 20))
                    .padding(4)
            }
            .padding(.leading,4)
            .foregroundColor(.black)
            
            Text("25 likes")
                .font(.system(size: 14,weight: .semibold))
                .padding(.leading,8)
                .padding(.bottom,0.5)
            
            // 名前とコンテキスト
            HStack {
                
                Text("Shibainu").font(.system(size: 14,weight: .semibold)) + Text("ワイのイッヌや").font(.system(size: 14))
            }
            .padding(.horizontal,8)
            // 時間
            Text("2H")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading,8)
                .padding(.top,-2)
        }
    }
}

#Preview {
    FeedCall()
}
