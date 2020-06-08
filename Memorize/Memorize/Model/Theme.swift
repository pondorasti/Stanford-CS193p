//
//  Theme.swift
//  Memorize
//
//  Created by Alexandru Turcanu on 08/06/2020.
//  Copyright © 2020 CodingBytes. All rights reserved.
//

import Foundation
import SwiftUI

struct Theme {

    // MARK: - Properties

    let name: String
    let foregroundColor: Color

    let emojis: [String]
    var rangeOfNumberOfPairs: ClosedRange<Int> {
        let upperBound = min(emojis.count, 8)
        return 2...upperBound
    }


    // MARK: - Type Properties

    static let allThemes = [haloween, winter, summer, animals, sports, faces]

    // not that halloweny :]
    static let haloween = Theme(
        name: "Haloween",
        foregroundColor: .orange,
        emojis: ["🕷", "🕸", "🎃", "🤯", "🥳", "👺", "👻", "☠️"]
    )

    static let winter = Theme(
        name: "Winter",
        foregroundColor: .blue,
        emojis: ["⛄️", "🌨", "❄️", "🥶", "🎿", "🏂", "⛷"]
    )

    static let summer = Theme(
        name: "Summer",
        foregroundColor: .orange,
        emojis: ["☀️", "🌞", "⛱", "🏊‍♂️", "🤽‍♂️", "🏄‍♂️", "🌊"]
    )

    static let animals = Theme(
        name: "Animals",
        foregroundColor: .orange,
        emojis: ["🦓", "🦔", "🦕", "🦥", "🦧", "🐇", "🦚", "🐊"]
    )

    static let sports = Theme(
        name: "Sports",
        foregroundColor: .orange,
        emojis: ["⛹️‍♀️", "🚣‍♀️", "🚵‍♀️", "🤾‍♀️", "🏋️‍♂️", "🏌️‍♂️", "🤽‍♀️", "🏄‍♀️"]
    )

    static let faces = Theme(
        name: "Faces",
        foregroundColor: .orange,
        emojis: ["😀", "😍", "🤪", "🤯", "🥳", "🤩", "🤔", "😤"]
    )
}
