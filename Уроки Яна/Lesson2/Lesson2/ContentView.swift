//
//  ContentView.swift
//  Lesson2
//
//  Created by Константин Ирошников on 21.06.2022.
//

import SwiftUI

struct ContentView: View {
    private let textTest = "Александр Иванов, Сегодня в 14:16 " +
                           "Дедлайн был вчера, потому что заказчик дает 3 дня, а ты получил в птн) но в нашем случае," +
                           " необходимо чем раньше, мы сразу же кидаем его на ревью, у заказчика на собесе ты ведь" +
                           " еще не был. Поэтому, чем раньше мы закончим все процессы"

    var body: some View {
        Text(textTest)
            .tracking(10) // растояние между буквами
            .lineLimit(5)
            .font(.system(size: 15, weight: .bold))
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            .background(Color.red)
            .lineSpacing(30) // расстояние между строчками
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
