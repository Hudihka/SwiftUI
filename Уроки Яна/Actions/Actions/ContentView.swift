//
//  ContentView.swift
//  Actions
//
//  Created by Константин Ирошников on 21.06.2022.
//

import SwiftUI

struct ContentView: View {
        var body: some View {
            Text("tap me")
                .padding(50)
                .background(.orange)
                .gesture(
                    // сработает когда перетащим хотя бы на 50 ед
                    DragGesture(minimumDistance: 50)
                        .onEnded({ _ in
                            print("press")
                        })
                )
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// просто жест
/*
 var body: some View {
     Text("tap me")
         .padding(50)
         .background(.orange)
         .onTapGesture {
             print("one print")
         }
         .onTapGesture(count: 2) {
             print("double print")
         }
 }
 */

// долгий жест
/*
 Text("tap me")
     .padding(50)
     .background(.orange)
     .gesture(
         LongPressGesture(minimumDuration: 2)
             .onEnded({ _ in
                 print("press")
             })
     )
 */

// драг жест
/*
 var body: some View {
     Text("tap me")
         .padding(50)
         .background(.orange)
         .gesture(
             // сработает когда перетащим хотя бы на 50 ед
             DragGesture(minimumDistance: 50)
                 .onEnded({ _ in
                     print("press")
                 })
         )
 }
 */
