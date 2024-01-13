//
//  NotficationsView.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/10.
//

import SwiftUI

struct NotficationsView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10){ _ in
                    NotificationCell()
                        .padding(.top)
                }
            }
        }
    }
}

#Preview {
    NotficationsView()
}
