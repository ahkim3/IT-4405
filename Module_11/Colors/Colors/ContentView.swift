//
//  ContentView.swift
//  Colors
//
//  Created by Andrew Kim on 4/5/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedColor = Color.yellow

    var body: some View {
        VStack {
            // Present a color picker
            ColorPicker("Select color:", selection: $selectedColor)
                .padding()

            // Display the color in a 150x150 square
            Rectangle()
                .fill(selectedColor)
                .frame(width: 150, height: 150)
                .cornerRadius(10)
                .padding(20)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
