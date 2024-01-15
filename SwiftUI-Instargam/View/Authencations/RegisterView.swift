//
//  RegisterView.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/15.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            Image("instagram-new-logo")
                .resizable()
                .frame(width: 220,height: 220)
                .foregroundColor(.black)
            
            CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                .padding()
                .cornerRadius(10)
                .foregroundColor(.gray)
                .padding(.horizontal,32)
            
            CustomTextField(text: $email, placeholder: Text("Password"), imageName: "envelope")
                .padding()
                .cornerRadius(10)
                .foregroundColor(.gray)
                .padding(.horizontal,32)
            
        }
    }
}

#Preview {
    RegisterView()
}
