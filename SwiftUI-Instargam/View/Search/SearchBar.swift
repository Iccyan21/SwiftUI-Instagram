//
//  SearchBar.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/13.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack{
            TextField("Search...",text: $text)
                .padding(8)
                .padding(.horizontal,24)
                .background(Color(.systemGray6))
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity,alignment: .leading)
                    }
                )
            Button(action: {
                isEditing = false
                text = ""
                UIApplication.shared.endEditing()
            }, label: {
                Text("Cancel")
                    .foregroundStyle(.black)
            })
            .padding(.trailing,8)
            .transition(.move(edge: .trailing))
            .animation(.default)
        }
        
        .onTapGesture {
            isEditing = true
        }
    }
}
