//
//  HomePage.swift
//  FoundationApp
//
//  Created by AFP FED 26 on 12/12/25.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        
        ZStack {
            ColorGradient()
            
            VStack{
                HStack{
                    Text ("Hello Guest!!!").font(Font.largeTitle.bold()).foregroundColor(.white).padding(20).frame(maxWidth: 200)
                    Spacer()
                    Image(systemName: "person.circle.fill").font(.system(size: 60)).foregroundColor(.white).padding(.horizontal, 30)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    HomePage()
}
