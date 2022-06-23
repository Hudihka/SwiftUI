//
//  ContentView.swift
//  ViewRotate
//
//  Created by Константин Ирошников on 23.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .background(.red)
                .border(.green, width: 5)
            Text("Hello, world!")
                .offset(y: 15)
                .padding(.bottom, 20)
            Text("Hello, world!")
            Text("Hello, world!")
                .padding()
                .background(.red)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.black, lineWidth: 20)
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
