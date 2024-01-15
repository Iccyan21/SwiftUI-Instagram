//
//  CustomSecureField.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/15.
//

import SwiftUI

struct CustomSecureField: View {
    
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white:1,alpha: 0.8)))
                    .padding(.leading,40)
            }
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20,height: 20)
                    .foregroundColor(.white)
                
                TextField("",text: $text)
            }
        }
    }
}
