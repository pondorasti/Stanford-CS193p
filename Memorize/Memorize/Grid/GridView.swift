//
//  GridView.swift
//  Memorize
//
//  Created by Alexandru Turcanu on 08/06/2020.
//  Copyright © 2020 CodingBytes. All rights reserved.
//

import SwiftUI

struct GridView<Data, CardContent>: View where Data: Identifiable, CardContent: View {

    // MARK: - Private Properties

    private let data: [Data]
    private let cardBuilder: (Data) -> CardContent


    // MARK: - Initializer

    init(data: [Data], cardBuilder: @escaping (Data) -> CardContent) {
        self.data = data
        self.cardBuilder = cardBuilder
    }


    // MARK: - Body

    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }


    // MARK: - Body Builders

    private func body(for size: CGSize) -> some View {
        let layout = GridLayout(itemCount: data.count, in: size)

        func position(for item: Data) -> CGPoint {
            guard let index = data.firstIndex(where: { $0.id == item.id }) else {
                fatalError("_Impossible_ bug in GridView")
            }

            return layout.location(ofItemAt: index)
        }

        return ForEach(self.data) { item in
            self.cardBuilder(item)
                .frame(width: layout.itemSize.width, height: layout.itemSize.height)
                .position(position(for: item))
        }
    }
}
