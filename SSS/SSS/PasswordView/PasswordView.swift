//
//  PasswordView.swift
//  SSS
//
//  Created by Константин Ирошников on 14.07.2022.
//

import SwiftUI

struct PasswordView: View {
    private enum Constant {
        static let spacing: CGFloat        = 25
    }

    var body: some View {
        VStack(spacing: Constant.spacing) {
            VStack(spacing: 0) {
                Text("Введите пароль")
                    .foregroundColor(SSSColor.white)
                    .font(
                        .system(size: 25)
                        .weight(.bold)
                    )
                PageControl()
                    .padding()
                Text("Введите пароль")
                    .foregroundColor(SSSColor.red)
                    .font(
                        .system(size: 10)
                        .weight(.regular)
                    )
                    .padding(0)
                Spacer()
                    .frame(minHeight: 15)
                    .fixedSize()
            }
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
                Spacer()
                    .frame(minWidth: 80)
                    .fixedSize()
                createButton(number: 0)
                createButtonForDelete()
            }
        }.background(SSSColor.black)
    }

    private func createButton(number: UInt) -> ButtonCifr {
        var button = ButtonCifr(number: number)
        button.actionTap = { num in
            print("taped number: \(num)")
        }
        return button
    }

    private func createButtonForDelete() -> ButtonDelete {
        return ButtonDelete {
            print("taped delete")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}
