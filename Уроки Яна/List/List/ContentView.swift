//
//  ContentView.swift
//  List
//
//  Created by Константин Ирошников on 22.06.2022.
//

import SwiftUI

struct Cell: View {
    var body: some View {
        Text("section")
    }
}


struct ContentView: View {
    var body: some View {
        List {
            Section("Section 1") {
                Cell()
                Cell()
            }
            Section("Section 2") {
                Cell()
                Cell()
                Cell()
            }
            Section("Section 3") {
                Cell()
            }
            Section("Section 4") {
                Cell()
                Cell()
                Cell()
                Cell()
            }
        }.listStyle(SidebarListStyle())
    }
}

/*
 DefaultListStyle  // закругленные края у секций
 BorderedListStyle // не для ios
 CarouselListStyle // не для ios
 EllipticalListStyle // не для ios
 GroupedListStyle // обычный
 InsetListStyle //

InsetGroupedListStyle
PlainListStyle
SidebarListStyle // позволяет скрывать секцию
 */

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
