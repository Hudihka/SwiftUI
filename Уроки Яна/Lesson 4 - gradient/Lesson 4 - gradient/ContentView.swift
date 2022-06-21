//
//  ContentView.swift
//  Lesson 4 - gradient
//
//  Created by Константин Ирошников on 21.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding(50)
            .foregroundColor(.white)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    startPoint: UnitPoint(x: 0, y: 0),
                    endPoint: UnitPoint(x: 1, y: 1)
                )
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
