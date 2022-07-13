//
//  PageControll.swift
//  SSS
//
//  Created by Константин Ирошников on 14.07.2022.
//

import SwiftUI

struct PageControl: View {

//    @Binding private var selectPage: Int
    private var count: Int = 0

    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<6) { _ in
                Circle()
                    .fill(SSSColor.white)
                    .stroke(SSSColor.white, style: StrokeStyle(lineWidth: 2, lineCap: .round))
                    .frame(width: 15, height: 15)
            }
        }
    }

    private func createCircle(full: Bool) -> some View {

        if full {
            return Circle()
                .stroke(SSSColor.white, style: StrokeStyle(lineWidth: 2, lineCap: .round))
                .frame(width: 15, height: 15)
        } else {
            return Circle()
                .fill(SSSColor.white)
                .frame(width: 15, height: 15)
        }
    }
}
