//
//  ForgetPasswordView.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/18.
//

import SwiftUI

struct ForgetPasswordView: View {
    
    @Binding var email: String
    
    init(email: Binding<String>) {
        self._email = email
    }
    
    var body: some View {
        NavigationView{
            VStack{
                Image("instagram-new-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220,height: 220)
                    .foregroundColor(.black)
                
                VStack(spacing: 32){
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .padding(.horizontal,32)
          
                    
                    HStack {
                        Spacer()
                        
                        NavigationLink(destination: SignInView(), label: {
                            
                            Text("Go back")
                                .font(.system(size: 13,weight: .semibold))
                                .foregroundColor(.gray)
                                .padding(.top)
                                .padding(.trailing,28)
                        })
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
                
                NavigationLink(destination: SignInView(),
                               label:{
                    HStack {
                        Text("アカウントを登録")
                            .font(.system(size: 14,weight: .semibold))
                        Text("サインイン")
                            .font(.system(size: 14))
                    }
                    
                })
            }
        }
    }
}
        
struct ForgetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPasswordView(email: .constant("email"))
    }
}
