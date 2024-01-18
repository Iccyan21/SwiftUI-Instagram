//
//  CustomTextField.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/15.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.black))
                    .padding(.leading,52)
            }
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20,height: 20)
                    .foregroundColor(.black)
                    
                
                TextField("",text: $text)
                    .padding(.trailing,8)
            }
            .padding(.leading)
        }
        .frame(width: 360,height: 50)
        .background(
            ZStack{
                Color(.init(white:0.9,alpha: 0.7))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.init(white: 0.7, alpha: 0.7)),lineWidth: 1)
                    )
            }
        )
    }
}
