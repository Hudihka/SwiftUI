//
//  ContentView.swift
//  Actions
//
//  Created by Константин Ирошников on 21.06.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var name = ""

    var body: some View {
        TextField("Enter your name....", text: $name, onEditingChanged: { value in
            print("или мы тапнули на ТФ или убрали с него курсор")
        }, onCommit: {
            print("нажали некст")
        })
            .padding(20)
            .multilineTextAlignment(.center)
            .background(Color.red)
            .keyboardType(.numberPad)
            .foregroundColor(Color.black)
            .textFieldStyle(RoundedBorderTextFieldStyle()) // если надо поменять бэкграунд цвет то задай в качестве бэкграунда вьюшку
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
