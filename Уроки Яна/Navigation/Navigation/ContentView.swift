//
//  ContentView.swift
//  Navigation
//
//  Created by Константин Ирошников on 22.06.2022.
//

import SwiftUI

struct ContentViewPush: View {
    let user: String

    var body: some View {
        Text("user \(user)")
    }
}

struct ContentViewModal: View {
    @Environment(\.dismiss) var dismiss

    let user: String

    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(Color.black)
    }
}

struct ContentView: View {

    @State private var users = [
        "User0", "User1", "User2", "User3", "User4",
        "User5", "User6", "User7", "User8", "User9"
    ]

    @State private var isModal = false

    var body: some View {
        NavigationView {
                generateList
                .navigationBarTitle("CastomTitle", displayMode: .inline)
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
                if isHonestIndex(user) {
                    NavigationLink(destination: ContentViewPush(user: user)) {
                        Text(user)
                    }
                } else {
                    Button {
                        self.isModal.toggle()
                    } label: {
                        Text(user)
                    }
                }
            }.onDelete(perform: { self.onDelete($0) })
                .sheet(isPresented: $isModal) {
                    ContentViewModal(user: "00000")
                }
        }
        .listStyle(InsetListStyle())
    }

    private func onDelete(_ index: IndexSet) {
        users.remove(atOffsets: index)
    }

    private func isHonestIndex(_ value: String) -> Bool {
        let index = users.firstIndex(where: { $0 == value }) ?? 0
        return index / 2 == 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
