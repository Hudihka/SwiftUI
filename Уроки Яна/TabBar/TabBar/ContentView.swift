//
//  ContentView.swift
//  TabBar
//
//  Created by Константин Ирошников on 23.06.2022.
//

import SwiftUI
// что то вроде экстеншена
struct CustomModificator: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(20)
            .foregroundColor(.green)
            .background(.blue)
    }
}


struct ContentView: View {
    @State private var selectionItem = 0

    init() {
//            UITabBar.appearance().backgroundColor = UIColor.red
        }

    var body: some View {
        TabView(selection: $selectionItem) {
            VStack {
                // поскольку стек может содержать только 10 элементов
                // мы можем увеличить это число с помошью групп
                Group {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
            }
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }.tag(0)
            Text("Hello, world!").modifier(CustomModificator())
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Second")
                }.tag(0)
        }.background(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
