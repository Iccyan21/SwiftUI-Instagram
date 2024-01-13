//
//  FeedView.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/10.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        // タイムライン
        ScrollView{
            LazyVStack(spacing: 32){
                // 10件回す
                ForEach(0 ..< 10){ _ in
                    FeedCall()
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
