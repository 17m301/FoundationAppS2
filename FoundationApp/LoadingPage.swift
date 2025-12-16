//
//  ContentView.swift
//  FoundationApp
//
//  Created by AFP FED 26 on 04/12/25.
//

import SwiftUI
import SwiftData
import Charts
import Combine

struct LoadingPage: View {
    var onComplete: () -> Void
    
    @State private var scale = 0.8
    @State private var opacity = 0.0
    
    var body: some View {
       
        ZStack{
 /*           ColorGradient()
            VStack{
                Image("Logo").resizable().aspectRatio(contentMode:.fill).scaledToFit().frame(width:280,height: 160).clipShape(Circle()).shadow(radius:20).padding(20)
                Text("Rest, Reimagined...")
                    .font(.title3)
                    .bold()
                    .italic()
                    .foregroundColor(.white)
            }
            */
            Color.black.ignoresSafeArea()
            VStack {
                Image(systemName: "moon.stars.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .foregroundStyle(.linearGradient(colors: [.cyan, .purple], startPoint: .top, endPoint: .bottom))
                
                Text("Mooner")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
            }
            .scaleEffect(scale)
            .opacity(opacity)
            
        }  .onAppear {
            withAnimation(.easeOut(duration: 1.5)) {
                scale = 1.0
                opacity = 1.0
            }
            // Auto-advance after 2 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                onComplete()
            }
        }

    }
}

#Preview {
    LoadingPage(onComplete: {})
}
