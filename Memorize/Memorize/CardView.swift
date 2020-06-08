//
//  CardView.swift
//  Memorize
//
//  Created by Alexandru Turcanu on 20/05/2020.
//  Copyright © 2020 CodingBytes. All rights reserved.
//

import SwiftUI

struct CardView: View {

    // MARK: - Public Properties

    var card: MemoryGame<String>.Card


    // MARK: - Drawing Constants

    private let cornerRadius: CGFloat = 10
    private let lineWidth: CGFloat = 3
    private let aspectRatio: CGFloat = 1


    // MARK: - Body

    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }

    }


    // MARK: - Body Builders

    private func body(for size: CGSize) -> some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).strokeBorder(lineWidth: lineWidth)

                Text(card.content)
                    .font(.system(size: fontSize(for: size)))
            } else if !card.isMatched {
                RoundedRectangle(cornerRadius: cornerRadius).fill()
            }
        }
        .transition(.slide)
        .animation(.default)
    }

    private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.75
    }
}


// MARK: - Preview

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: MemoryGame<String>.Card(id: 0, content: "🤯"))
    }
}
