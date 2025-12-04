//
//  ContentView.swift
//  FoundationApp
//
//  Created by AFP FED 26 on 04/12/25.
//

import SwiftUI

struct LoadingPage: View {
    var body: some View {
       
        ZStack{
            ColorGradient()
            VStack{
                Image("Logo").resizable().aspectRatio(contentMode:.fill).scaledToFit().frame(width:280,height: 160).clipShape(Circle()).shadow(radius:20).padding(20)
                Text("Rest, Reimagined...")
                    .font(.title3)
                    .bold()
                    .italic()
                    .foregroundColor(.white)
            }
            
        }

    }
}
#Preview {
    LoadingPage()
}
