//
//  CellAnket.swift
//  SSS
//
//  Created by Константин Ирошников on 16.07.2022.
//

import SwiftUI

struct CellAnket: View {
    var body: some View {
        ZStack {
            VStack {
                Image("testImage")
                    .resizable()
                    .frame(width: 150, height: 250)
                information()
            }.background(SSSColor.black)
            informationActive()
        }
    }

    private func information() -> some View {
        VStack {
            HStack {
                Text("30m")
                    .foregroundColor(SSSColor.white)
                Text("1h")
                    .foregroundColor(SSSColor.white)
            }
            HStack {
                Text("2000")
                    .foregroundColor(SSSColor.white)
                Text("3000")
                    .foregroundColor(SSSColor.white)
            }
        }
    }

    private func informationActive() -> some View {
        VStack {
            Spacer()
                .frame(height: 10)
            HStack {
                Text("НЕ АКТИВНА")
                    .padding(5)
                    .foregroundColor(SSSColor.white)
                    .background(SSSColor.black)
            }
            Spacer()
        }
    }
}

struct CellAnket_Previews: PreviewProvider {
    static var previews: some View {
        CellAnket()
    }
}
