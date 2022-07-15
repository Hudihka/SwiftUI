//
//  URLView.swift
//  SSS
//
//  Created by Константин Ирошников on 14.07.2022.
//

import SwiftUI

struct URLView: View {
    private enum Constant {
        static let spacing: CGFloat        = 25
    }

    var body: some View {
        ZStack {
            SSSColor.black.ignoresSafeArea()
            VStack(spacing: Constant.spacing) {
                VStack(spacing: 0) {
                    Text("Скопируйте URL анкеты")
                        .foregroundColor(SSSColor.white)
                        .font(
                            .system(size: 35)
                            .weight(.bold)
                        )
                    Spacer()
                        .frame(minHeight: 50)
                        .fixedSize()
                    Text("ссылка на урл")
                        .foregroundColor(SSSColor.white)
                        .font(
                            .system(size: 20)
                            .weight(.regular)
                        )
                        .padding(10)
                        .frame(width: wDdevice - 100)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(SSSColor.white, lineWidth: 2))
                    Spacer()
                        .frame(minHeight: 100)
                        .fixedSize()
                    Button {
                        print("продолжить")
                    } label: {
                        Text("Продолжить")
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        URLView()
    }
}
