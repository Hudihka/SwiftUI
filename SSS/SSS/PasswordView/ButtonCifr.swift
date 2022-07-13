//
//  ButtonCifr.swift
//  SSS
//
//  Created by Константин Ирошников on 14.07.2022.
//

import SwiftUI

struct ButtonCifr: View {
    private enum Constant {
        static let size: CGFloat        = 80
        static let radius: CGFloat      = size / 2
    }

    private let number: UInt
    var actionTap: (UInt) -> Void = { _ in }

    init(number: UInt) {
        self.number = number
    }

    var body: some View {
        Button {
            self.actionTap(self.number)
        } label: {
            Text("\(number)")
                .font(
                    .system(size: 45)
                    .weight(.bold)
                )
                .foregroundColor(SSSColor.white)
                .frame(
                    width: Constant.size,
                    height: Constant.size,
                    alignment: .center
                )
                .background(SSSColor.black)
                .clipShape(RoundedRectangle(cornerRadius: Constant.radius))
                .overlay(
                    RoundedRectangle(cornerRadius: Constant.radius)
                    .stroke(lineWidth: 3)
                    .foregroundColor(SSSColor.white)
                )
        }
    }
}
