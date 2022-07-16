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
                    .frame(width: 50)
                Text("1h")
                    .foregroundColor(SSSColor.white)
                    .frame(width: 50)
            }
            HStack {
                Text("2000")
                    .foregroundColor(SSSColor.white)
                    .frame(width: 50)
                Text("3000")
                    .foregroundColor(SSSColor.white)
                    .frame(width: 50)
            }
        }
    }

    private func informationActive() -> some View {
        VStack {
            Spacer()
                .frame(height: 10)
            HStack {
                Spacer()
                    .frame(width: 10)
                Text("НЕ АКТИВНА")
                    .padding([.bottom, .top], 6)
                    .padding([.leading, .trailing], 10)
                    .foregroundColor(SSSColor.white)
                    .background(SSSColor.black)
                    .modifier(RoundedEdge(width: 2, color: SSSColor.red, cornerRadius: 12))
                Spacer()
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
