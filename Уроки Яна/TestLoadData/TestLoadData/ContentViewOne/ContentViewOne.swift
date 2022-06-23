//
//  ContentView.swift
//  TestLoadData
//
//  Created by Константин Ирошников on 23.06.2022.
//

import SwiftUI

struct ContentViewOne: View {

    @ObservedObject var VM: ContentViewOneVM

    init(VM: ContentViewOneVM) {
        self.VM = VM
    }

    var body: some View {
        VStack {
            Text(VM.content ?? "no text")
            Spacer().frame(height: 25)
            Button {
                self.VM.loadData()
            } label: {
                Text("загрузка даты")
            }
            .padding()
            .background(.red)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Builder.createOne()
    }
}
