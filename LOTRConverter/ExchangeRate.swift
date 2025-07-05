//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Jean Camargo on 05/07/25.
//

import SwiftUI

struct ExchangeRate: View {
    let lefImage: ImageResource
    let text: String
    let rightImage: ImageResource

    var body: some View {
        HStack {
            // Left currency image
            Image(lefImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate text
            Text(text)
            
            // Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(
        lefImage: .silverpiece,
        text: "1 Silver Piece = 4 Silver Pennies",
        rightImage: .silverpenny
    )
}
