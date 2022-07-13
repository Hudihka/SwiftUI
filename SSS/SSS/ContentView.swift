//
//  ContentView.swift
//  SSS
//
//  Created by Константин Ирошников on 13.07.2022.
//

import SwiftUI

struct PasswordView: View {
    private enum Constant {
        static let spacing: CGFloat        = 25
    }

    var body: some View {
        VStack(spacing: Constant.spacing) {
            HStack(spacing: Constant.spacing) {
                createButton(number: 1)
                createButton(number: 2)
                createButton(number: 3)
            }
            HStack(spacing: Constant.spacing) {
                createButton(number: 4)
                createButton(number: 5)
                createButton(number: 6)
            }
            HStack(spacing: Constant.spacing) {
                createButton(number: 7)
                createButton(number: 8)
                createButton(number: 9)
            }
            HStack(spacing: Constant.spacing) {
                createButton(number: 0)
            }
        }
    }

    private func createButton(number: UInt) -> ButtonCifr {
        var button = ButtonCifr(number: number)
        button.actionTap = { num in
            print("taped number: \(num)")
        }
        return button
    }
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}
