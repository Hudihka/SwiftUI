//
//  Anket.swift
//  SSS
//
//  Created by Константин Ирошников on 15.07.2022.
//

import Foundation

struct Anket {
    let image: String?
    let isActive: Bool
    let thirtyMinutes: Int?
    let oneHour: Int

    var urlImage: URL? {
        guard
            let image = image,
            let url = URL(string: image)
        else {
            return nil
        }

        return url
    }
}

extension Anket {
    private static let images = [
        "https://img.gazeta.ru/files3/417/14320417/Depositphotos_266204162_XL-pic_32ratio_900x600-900x600-77739.jpg",
        "https://bufera.club/uploads/posts/2021-03/1615760156_36-p-seksi-pareni-i-devushki-erotika-40.jpg",
        "https://bufera.club/uploads/posts/2021-03/1615760137_28-p-seksi-pareni-i-devushki-erotika-32.jpg",
        "https://bufera.club/uploads/posts/2021-03/1615760198_64-p-seksi-pareni-i-devushki-erotika-70.jpg",
        "https://bufera.club/uploads/posts/2021-03/1615760133_40-p-seksi-pareni-i-devushki-erotika-45.jpg",
        "https://bufera.club/uploads/posts/2021-03/1615760143_1-p-seksi-pareni-i-devushki-erotika-1.jpg",
        "https://bufera.club/uploads/posts/2021-03/1615760104_42-p-seksi-pareni-i-devushki-erotika-47.jpg",
        "https://img2.goodfon.ru/original/1920x1200/c/6f/nochnoy-gorod-reka-prazdnik.jpg",
        "https://img3.goodfon.ru/original/2048x1367/c/ba/yaponiya-tokio-stolica-noch-7105.jpg",
        "https://img1.goodfon.ru/original/1920x1080/5/67/sapporo-yaponiya-ostrov.jpg",
        "https://img1.goodfon.ru/original/1920x1080/f/79/zakat-gorod-chasovnya.jpg",
        "https://www.goodfon.ru/download/tailand-gorod-pattayya/2048x1365/",
        "https://img2.goodfon.ru/original/2048x1365/a/f3/tailand-gorod-pattayya.jpg",
        "https://img4.goodfon.ru/original/2000x1376/1/97/reka-gory-oblaka.jpg",
        "https://img5.goodfon.ru/original/2880x1800/d/66/more-volny-priboi-nebo-bereg-oblaka-leto.jpg"
    ]

    private static let prises = [
        2500,
        3000,
        3500,
        4000,
        4500,
        5000,
        5500,
        6000,
        6500
    ]

    private static var generateRandomAnket: Anket {
        let maxCount: UInt32 = UInt32(Anket.images.count - 1)
        let index = arc4random_uniform(maxCount)
        let image = Anket.images[Int(index)]

        let isActive = arc4random_uniform(1000) < 900

        let maxCountPrise: UInt32 = UInt32(Anket.prises.count - 1)
        let indexPrice = arc4random_uniform(maxCountPrise)
        let price = Anket.prises[Int(indexPrice)]

        let thirtyMinutes = arc4random_uniform(1000) < 800
        let thirtyMinutesPrice = thirtyMinutes ? price - 1000 : nil

        return Anket(image: image, isActive: isActive, thirtyMinutes: thirtyMinutesPrice, oneHour: price)
    }

    static func generateListAnket(count: Int = 20) -> [Anket] {
        var ancets = [Anket]()
        for _ in 0...count - 1 {
            ancets.append(Anket.generateRandomAnket)
        }

        return ancets
    }
}
