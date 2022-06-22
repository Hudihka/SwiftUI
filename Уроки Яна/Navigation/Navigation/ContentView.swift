//
//  ContentView.swift
//  Navigation
//
//  Created by Константин Ирошников on 22.06.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var users = [
        "User0", "User1", "User2", "User3", "User4",
        "User5", "User6", "User7", "User8", "User9"
    ]

    var body: some View {
        NavigationView {
                generateList
                .navigationBarTitle("Title", displayMode: .inline)
                .navigationBarItems(
                    leading: Button(action: {
                        print("taped sun")
                    }, label: {
                        Image(systemName: "sun.min").renderingMode(.original)
                    })
                )
                .navigationBarItems(
                    trailing:
                        HStack {
                            Button(action: {
                                print("taped cloud1")
                            }, label: {
                                Image(systemName: "moon").renderingMode(.original)
                            })
                            Button(action: {
                                print("taped cloud2")
                            }, label: {
                                Image(systemName: "moon")
                                    .renderingMode(.original)
                                    .foregroundColor(.red)
                            })
                        }
                )
        }
    }

    private var generateList: some View {
        List {
            ForEach(users, id: \.self) { user in
                Text(user)
            }.onDelete(perform: { self.onDelete($0) })
        }
        .listStyle(InsetListStyle())
    }

    private func onDelete(_ index: IndexSet) {
        users.remove(atOffsets: index)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
