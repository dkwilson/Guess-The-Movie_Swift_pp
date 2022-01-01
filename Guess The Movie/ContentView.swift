//
//  ContentView.swift
//  Guess The Movie
//
//  Created by Dkeith Wilson on 12/31/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Guess These Movies")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .foregroundColor(.gray)
            
            Text("Can you guess the movie from these emojis?")
                .font(.system(size: 15))
            
            Text("Tap the button to find out the answer")
                .font(.system(size: 15))
            
        Button {
            speak(text: "Back To The Future")
        } label: {
            Text("👨🏾👨🏽‍⚕️🚗⌚️")
                .padding()
                .background(.green)
                .cornerRadius(20)
        }
            Button {
                speak(text: "Frozen")
            } label: {
                Text("🏰👯‍♀️❄️⛄️")
                    .padding()
                    .background(.yellow)
                    .cornerRadius(20)
            }
            Button {
                speak(text: "Ocean's Eleven")
            } label: {
                Text("🌊1️⃣1️⃣")
                    .padding()
                    .background(.blue
                    )
                    .cornerRadius(20)
            }
            Button {
                speak(text: "Spider Man")
            } label: {
                Text("🕷🏃🏽‍♂️")
                    .padding()
                    .background(.brown
                    )
                    .cornerRadius(20)
            }
        }
    }
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
