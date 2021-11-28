//
//  ContentView.swift
//  TapsProject
//
//  Created by Federico on 28/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var color = Color.gray
    @State private var tutorialText = "(Tap the circle)"
    
    var body: some View {
        VStack {
            Text(tutorialText)
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
                .onTapGesture(count: 2) {
                    self.color = Color.red
                    self.tutorialText = "Isn't that cool?"
                    print("Double tapped!")
                }
                .onTapGesture(count: 1) {
                    self.color = Color.green
                    self.tutorialText = "Now try tapping it twice."
                    print("Single tapped!")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
