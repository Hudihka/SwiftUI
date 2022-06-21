//
//  ContentView.swift
//  Lesson 4 - gradient
//
//  Created by Константин Ирошников on 21.06.2022.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .yellow, .black, .green]
    var body: some View {
        Circle()
            .fill(
                AngularGradient(
                    colors: colors,
                    center: .center
                )
            )
            .frame(width: 300, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// простой градиент

//Text("Hello, world!")
//    .padding(50)
//    .foregroundColor(.white)
//    .background(
//        LinearGradient(
//            gradient: Gradient(colors: [.red, .blue]),
//            startPoint: UnitPoint(x: 0, y: 0),
//            endPoint: UnitPoint(x: 1, y: 1)
//        )
//    )

// радиальный градиент (из центра наружу)
/*
 Circle()
     .fill(
         RadialGradient(
             colors: colors,
             center: .center,
             startRadius: 50,
             endRadius: 200
         )
     )
     .frame(width: 300, height: 300)
 */
