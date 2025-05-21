//
//  ContentView.swift
//  Elvis
//
//  Created by Pritam on 20/05/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    let imageNames = ["peacesign", "heart.fill", "lightbulb"]
    let names = ["Peace", "Love", "Understanding"]
    @State private var message = ""
    @State private var imageName = ""
    @State private var audioPlayer: AVAudioPlayer!
    @State private var isAudioPlaying = false
    let soundName = "sound"
    
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
            
            Button {
                audioPlayer.stop()
            } label: {
                Image(systemName: "pause.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                    .foregroundStyle(.purple)
                    .padding(.bottom, 32)
            }
            
            HStack {
                Button("Peace") {
                    message = names[0]
                    imageName = imageNames[0]
                    guard let soundFile = NSDataAsset(name: "\(soundName)0") else {
                        print("😡 file name \(soundName) not found!")
                        return
                    }
                    
                    do {
                        if isAudioPlaying {
                            audioPlayer.stop()
                            isAudioPlaying = false
                        }
                        
                        audioPlayer = try AVAudioPlayer(data: soundFile.data)
                        audioPlayer.play()
                        isAudioPlaying = true
                    } catch {
                        print("😡 \(error.localizedDescription) sound cannot be played!")
                    }
                }
                
                Button("Love") {
                    message = names[1]
                    imageName = imageNames[1]
                    
                    guard let soundFile = NSDataAsset(name: "\(soundName)1") else {
                        print("😡 file name \(soundName) not found!")
                        return
                    }
                    
                    do {
                        if isAudioPlaying {
                            audioPlayer.stop()
                            isAudioPlaying = false
                        }
                        
                        audioPlayer = try AVAudioPlayer(data: soundFile.data)
                        audioPlayer.play()
                        isAudioPlaying = true
                    } catch {
                        print("😡 \(error.localizedDescription) sound cannot be played!")
                    }
                }
                
                Button("Understanding") {
                    message = names[2]
                    imageName = imageNames[2]
                    
                    guard let soundFile = NSDataAsset(name: "\(soundName)2") else {
                        print("😡 file name \(soundName) not found!")
                        return
                    }
                    
                    do {
                        if isAudioPlaying {
                            audioPlayer.stop()
                            isAudioPlaying = false
                        }
                        
                        audioPlayer = try AVAudioPlayer(data: soundFile.data)
                        audioPlayer.play()
                        isAudioPlaying = true
                    } catch {
                        print("😡 \(error.localizedDescription) sound cannot be played!")
                    }
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
