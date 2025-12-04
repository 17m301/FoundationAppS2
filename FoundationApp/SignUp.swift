//
//  SignUp.swift
//  FoundationApp
//
//  Created by AFP FED 26 on 11/12/25.
//

import SwiftUI

struct SignUp: View {
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var gender: String = ""
    
    var PasswordMatch : Bool {
        password == confirmPassword || confirmPassword.isEmpty
    }
    
    var body: some View {
        ZStack{
            ColorGradient()
            
            VStack (spacing : 20){
                
                Text("Create your Mooner Account").font(Font.title2.bold()).foregroundStyle(Color.white).padding(.bottom, 20)
                
                if !PasswordMatch {
                    Text("Password do not match !!!").foregroundColor(.red).font(.headline.bold())
                }
                
                HStack{
                    Text("Username").foregroundColor(.white).font(Font.headline.bold())
                    Spacer()
                }
                TextField(" Username", text: $username)
                    .frame(height: 50)
                    .background(.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).cornerRadius(10)
                HStack{
                    Text("Password").foregroundColor(.white).font(Font.headline.bold())
                    Spacer()
                }
                SecureField(" Password", text: $password)
                    .frame(height: 50)
                    .background(.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).cornerRadius(10)
                HStack{
                    Text("Confirm Password").foregroundColor(.white).font(Font.headline.bold())
                    Spacer()
                }
                SecureField(" Confirm Password", text: $confirmPassword)
                    .frame(height: 50)
                    .background(.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).cornerRadius(10)
                HStack{
                    Text("Email").foregroundColor(.white).font(Font.headline.bold())
                    Spacer()
                }
                TextField(" Email", text: $email)
                    .frame(height:50)
                    .background(.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).cornerRadius(10)
                
                Button(action: {
                    print("Sign Up")
                }){
                    Text("Sign Up").foregroundColor(.white)
                        .padding()
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }.padding(20)
            
        }
    }
}

#Preview {
    SignUp()
}
