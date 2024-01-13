//
//  PostGrodView.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/13.
//

import SwiftUI

struct PostGridView: View {
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        LazyVGrid(columns: items, spacing:2,content: {
            ForEach(0..<10){ _ in
                Image("Shibainu")
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: width)
            }
        })
    }
}

#Preview {
    PostGridView()
}
