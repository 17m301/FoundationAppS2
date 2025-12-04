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
                
                Text ("Hello Guest!!!")
            }
        }
    }
}

#Preview {
    HomePage()
}
