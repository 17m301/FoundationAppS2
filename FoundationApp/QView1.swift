//
//  QView1.swift
//  FoundationApp
//
//  Created by AFP FED 41 on 15/12/25.
//

import SwiftUI
import SwiftData
import Charts
import Combine

struct QView1: View {
    var onContinue: () -> Void
    @Environment(\.modelContext) private var context
    //@Query private var settings: [UserSettings]
    
    @State private var selectedTags: [String] = []
    @State private var bedTime = Date()
    
    let tags = ["Trouble falling asleep", "Busy mind", "Inconsistent schedule", "Stress relief", "Noise sensitivity"]
    
    var body: some View {
        
        ZStack {
            Color(red: 0.05, green: 0.05, blue: 0.1).ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 25) {
                Text("Let's personalize your sleep.")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                    .padding(.top, 40)
                
                Text("What's keeping you up?")
                    .font(.headline)
                    .foregroundStyle(.gray)
                
                // Tag Cloud (using LazyVGrid for simplicity)
               /* LazyVGrid(columns: [GridItem(.adaptive(minimum: 140))], spacing: 12) {
                    ForEach(tags, id: \.self) { tag in
                        Button(action: { toggle(tag) }) {
                            Text(tag)
                                .font(.subheadline)
                                .bold()
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(selectedTags.contains(tag) ? Color.purple : Color.white.opacity(0.1))
                                .foregroundStyle(.white)
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.purple, lineWidth: selectedTags.contains(tag) ? 2 : 0)
                                )
                        }
                    }
                }*/
                
                Divider().background(.gray)
                
                Text("Ideal Bedtime")
                    .font(.headline)
                    .foregroundStyle(.gray)
                
                DatePicker("", selection: $bedTime, displayedComponents: .hourAndMinute)
                    .datePickerStyle(.wheel)
                    .labelsHidden()
                    .colorScheme(.dark)
                    .frame(height: 100)
                
                Spacer()
                
                /*Button(/*action: saveAndContinue*/) {
                    Text("Continue")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(LinearGradient(colors: [.cyan, .purple], startPoint: .leading, endPoint: .trailing))
                        .foregroundStyle(.white)
                        .cornerRadius(16)
                }*/
            }
            .padding()
        }
        
    }
}

#Preview {
    QView1(onContinue : {})
}

