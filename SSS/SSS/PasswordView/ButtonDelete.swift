//
//  ButtonDelete.swift
//  SSS
//
//  Created by Константин Ирошников on 14.07.2022.
//

import SwiftUI

struct ButtonDelete: View {
    private enum Constant {
        static let size: CGFloat        = 80
    }

    private let actionTap: () -> Void

    init(actionTap: @escaping () -> Void) {
        self.actionTap = actionTap
    }

    var body: some View {
        Button(
            action: actionTap
        ) {
            Image(systemName: "delete.left.fill")
                .font(
                    .system(size: 38)
                    .weight(.bold)
                )
                .foregroundColor(SSSColor.white)
                .frame(
                    width: Constant.size,
                    height: Constant.size,
                    alignment: .center
                )
                .background(SSSColor.black)
        }
    }
}
