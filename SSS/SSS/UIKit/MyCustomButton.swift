//
//  MyCustomButton.swift
//  SSS
//
//  Created by Константин Ирошников on 15.07.2022.
//

import SwiftUI

struct MyCustomButton: View {
    private let text: String
    private let action: () -> Void

    init(text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }

    var body: some View {
        Button(
            action: action
        ) {
            Text(text)
                .font(
                    .system(size: 30)
                        .weight(.bold)
                )
                .foregroundColor(SSSColor.black)
                .frame(
                    width: wDdevice - 100,
                    height: 50,
                    alignment: .center
                )
                .background(SSSColor.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}
