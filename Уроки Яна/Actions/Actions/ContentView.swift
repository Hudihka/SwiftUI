//
//  ContentView.swift
//  Actions
//
//  Created by Константин Ирошников on 21.06.2022.
//

import SwiftUI

struct ContentView: View {

    private let colors = ["white", "red", "blue", "green", "orange", "black",]
    @State private var selectedColor = "red"

        var body: some View {
            VStack {
                Picker("Please choose a color", selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                /*
                 DefaultPickerStyle   // поповер
                 InlinePickerStyle    // барабан
                 MenuPickerStyle          // тоже поповер
                 PopUpButtonPickerStyle   // не для iOS
                 RadioGroupPickerStyle     // не для iOS
                 SegmentedPickerStyle     сегмент контроллер
                 WheelPickerStyle       // тоже барабан
                 */
                Text("You selected: \(selectedColor)")
                    .background(youSelectColor)
            }
        }

    private var youSelectColor: Color {
        switch selectedColor {
        case "white":
            return .white
        case "red":
            return .red
        case "blue":
            return .blue
        case "green":
            return .green
        case "orange":
            return .orange
        default:
            return .black
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
