//
//  PageControll.swift
//  SSS
//
//  Created by Константин Ирошников on 14.07.2022.
//

import SwiftUI

struct PageControl: View {

    private var count: Int = 0

    init(count: Int) {
        self.count = count
    }

    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<6) { index in
                createCircle(full: index < count)
            }
        }
    }

    @ViewBuilder
    private func createCircle(full: Bool) -> some View {

        if full {
            Circle()
                .fill(SSSColor.white)
                .frame(width: 15, height: 15)
        } else {
            Circle()
                .stroke(SSSColor.white, style: StrokeStyle(lineWidth: 2, lineCap: .round))
                .frame(width: 15, height: 15)
        }
    }
}
