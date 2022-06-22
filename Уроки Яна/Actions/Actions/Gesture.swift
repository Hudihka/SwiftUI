//
//  Gesture.swift
//  Actions
//
//  Created by Константин Ирошников on 22.06.2022.
//

import Foundation


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
