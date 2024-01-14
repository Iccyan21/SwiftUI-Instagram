//
//  UserStates.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/14.
//

import SwiftUI

struct UserStates: View {
    
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.system(size: 15,weight: .semibold))
            Text(title)
                .font(.system(size: 15))
        }
        .frame(width: 80,alignment: .center)
    }
}
