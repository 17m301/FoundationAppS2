//
//  SignIn.swift
//  FoundationApp
//
//  Created by AFP FED 26 on 10/12/25.
//

import SwiftUI

struct SignIn: View {
    
    @State var username = ""
    @State var password = ""
    @State var remember: Bool = false
    var body: some View {
        ZStack{
            ColorGradient()
            VStack (spacing : 10){
                Form {
                    VStack (spacing : 20){
                        Text("Sign In to your account").font(Font.title.bold()).padding(.bottom,10)
                        TextField("Username", text: $username).textFieldStyle(.roundedBorder).padding(.horizontal)
                        SecureField("Password", text: $password).textFieldStyle(.roundedBorder).padding(.horizontal)
                        Toggle("Remember me", isOn: $remember).padding(.horizontal)
                        
                        Button(action: {print("Sign In tapped")})
                        {
                            Text("Sign In")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.headline)
                        }
                        .padding(.horizontal)
                        
                        
                    }
                    .padding(.vertical)
                    
                }.frame(maxHeight:380).scrollContentBackground(.hidden)

                
                Text("Don't have an account? Sign Up").font(.subheadline).padding()
            }
        }
        
        
    }
}

#Preview {
    SignIn()
}
