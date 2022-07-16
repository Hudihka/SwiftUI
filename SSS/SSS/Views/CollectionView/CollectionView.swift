//
//  CollectionView.swift
//  SSS
//
//  Created by Константин Ирошников on 15.07.2022.
//

import SwiftUI

struct ContentViewPush: View {
    let user: String

    var body: some View {
        Text("user \(user)")
    }
}

struct CollectionView: View {

    @State private var users = [
        "User0", "User1", "User2", "User3", "User4",
        "User5", "User6", "User7", "User8", "User9"
    ]

    @State private var isModal = false

    var body: some View {
        NavigationView {
            ZStack {
                SSSColor.black.edgesIgnoringSafeArea(.all)
                bottomView
                .navigationBarItems(
                    leading:
                        Button(action: {
                            print("taped cloud2")
                        }, label: {
                            Image(systemName: "pencil")
                                .renderingMode(.original)
                                .foregroundColor(SSSColor.white)
                        })
                )
                .navigationBarTitle("Title", displayMode: .inline)
                .navigationBarTitleTextColor(SSSColor.white)
            }
        }
    }

    private var bottomView: some View {
        VStack {
            Spacer()
                .frame(maxHeight: 20)
                .fixedSize()
            MyCustomButton(text: "ДОБАВИТЬ") {
                print("добавить")
            }
            Spacer()
                .frame(maxHeight: 20)
                .fixedSize()
        }
    }

    private var generateList: some View {
        List {
            ForEach(users, id: \.self) { user in
//                if isHonestIndex(user) {
//                    NavigationLink(destination: ContentViewPush(user: user)) {
//                        Text(user)
//                    }
//                } else {
//                    Button {
//                        self.isModal.toggle()
//                    } label: {
//                        Text(user)
//                    }
//                }
            }
        }
        .listStyle(InsetListStyle())
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
