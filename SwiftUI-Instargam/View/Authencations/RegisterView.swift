//
//  RegisterView.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/15.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var username = ""
    @State var fullname = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Image("instagram-new-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220,height: 220)
                    .foregroundColor(.black)
                
                VStack(spacing: -16){
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .padding(.horizontal,32)
                    
                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .padding(.horizontal,32)
                    
                    CustomTextField(text: $fullname, placeholder: Text("Fullname"), imageName: "person")
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .padding(.horizontal,32)
                    
                    CustomSecureField(text: $password, placeholder: Text("Password"), imageName: "envelope")
                        .padding()
                        .padding(.horizontal,32)
                    
                    HStack {
                        Spacer()
                        
                        Text("Forget Password")
                            .font(.system(size: 13,weight: .semibold))
                            .foregroundColor(.gray)
                            .padding(.top)
                            .padding(.trailing,28)
                    }
                }
                Button(action: {
                    
                }, label: {
                    Text("Register")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 360,height: 50)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                })
                Spacer()
                
                NavigationLink(destination: SignInView()
                    .navigationBarBackButtonHidden(true),
                               label:{
                    HStack {
                        Text("既にアカウントを持っていますか？")
                            .font(.system(size: 14,weight: .semibold))
                        Text("ログイン")
                            .font(.system(size: 14))
                    }
                    
                })
            }
            .padding(.top,-10)
        }
    }
}

#Preview {
    RegisterView()
}
