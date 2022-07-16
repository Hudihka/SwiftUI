//
//  View.swift
//  SSS
//
//  Created by Константин Ирошников on 15.07.2022.
//

import SwiftUI

extension View {

    @available(iOS 14, *)
    func navigationBarTitleTextColor(_ color: Color) -> some View {
        let uiColor = UIColor(color)

        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: uiColor ]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: uiColor ]

        return self
    }
}
