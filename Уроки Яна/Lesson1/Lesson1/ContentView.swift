//
//  ContentView.swift
//  Lesson1
//
//  Created by Константин Ирошников on 21.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("0")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250.0, height: 250.0, alignment: .top)
                Spacer()
            }
            VStack {
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer().frame(height: 100)
            }
            VStack {
                Spacer().frame(height: 200)
                Image("2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// пример с VStack
//VStack {
//    Text("Hello, world!").padding(.top, 500)
//    Spacer().frame(height: 150)
//    Text("Hello, SwiftUI!").padding(10)
//}
