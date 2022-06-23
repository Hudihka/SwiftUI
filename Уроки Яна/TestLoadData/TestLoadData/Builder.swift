//
//  Builder.swift
//  TestLoadData
//
//  Created by Константин Ирошников on 23.06.2022.
//

import SwiftUI

final class Builder {

    static func createOne() -> some View {
        let VM = ContentViewOneVM()
        let view = ContentViewOne(VM: VM)

        return view
    }
}
