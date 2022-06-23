//
//  ContentViewOneVM.swift
//  TestLoadData
//
//  Created by Константин Ирошников on 23.06.2022.
//

import Foundation
import Combine

final class ContentViewOneVM: ObservableObject {
    @Published private(set) var content: String? = nil
    private var canc: AnyCancellable?

//    init() {
//        canc = $content
//    }

    func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.content = "Test Content"
        }
    }
}
