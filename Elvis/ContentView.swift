//
//  ContentView.swift
//  Elvis
//
//  Created by Pritam on 20/05/25.
//

import SwiftUI

struct ContentView: View {
    
    let imageNames = ["peacesign", "heart.fill", "lightbulb"]
    let names = ["Peace", "Love", "Understanding"]
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.title)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    message = names[0]
                    imageName = imageNames[0]
                }
                
                Button("Love") {
                    message = names[1]
                    imageName = imageNames[1]
                }
                
                Button("Understanding") {
                    message = names[2]
                    imageName = imageNames[2]
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
