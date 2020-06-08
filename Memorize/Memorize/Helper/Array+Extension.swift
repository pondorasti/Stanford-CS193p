//
//  Array+Extension.swift
//  Memorize
//
//  Created by Alexandru Turcanu on 08/06/2020.
//  Copyright © 2020 CodingBytes. All rights reserved.
//

import Foundation

extension Array {
    func containsOnlyOneElement() -> Element? {
        count == 1 ? first : .none
    }
}
