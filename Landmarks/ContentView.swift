//  ContentView.swift
//  Landmarks
//  Created by Melody Flavel on 8/10/2023.

import SwiftUI

// By default, SwiftUI view files declare a structure and a preview.
struct ContentView: View { // The structure conforms to the View protocol and describes the view's content and layout.
    var body: some View { // The 'body' property contains descriptions of content, layout, and behaviour and returns a single view. Multiple views can be combined and embedded in stacks.
        VStack { // Stacks group views together horizontally, vertically, or back-to-front.
            MapView() // Add the 'MapView' view to the stack.
                .frame(height: 300) // Set the size of the 'MapView'.
            CircleImage() // Add the 'CircleImage' view to the stack.
                .offset(y: -130) // Move 'CircleImage' upwards.
                .padding(.bottom, -130) // Removes padding from the bottom of 'CircleImage'.
            VStack(alignment: .leading) {
                Text("State War Memorial")
                    .font(.title)
                HStack {
                    Text("Kings Park and Botanic Garden")
                    Spacer() // A 'spacer' expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
                    Text("WA")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About State War Memorial")
                    .font(.title2)
                Text("The State War Memorial honours the fallen from all wars in which Australia has participated. The area comprises of five main elements: the Cenotaph, Court of Contemplation, Flame of Remembrance, Pool of Reflection and ANZAC Bluff Commemorative Plaque.")
                    .font(.system(size: 10))
                    .frame(height: 60)
                
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
            .padding(.bottom, 130) // The 'padding' modifier provides more space around the outer edges of the stack.
            Spacer() // Push the content upwards.
        }
            
    }
}

#Preview { // The preview declaration creates a preview for that view.
    ContentView()
}
