//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Jean Camargo on 05/07/25.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Background parchment image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                // Description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                // Exchange rates
                ExchangeRate(
                    lefImage: .goldpiece,
                    text: "1 Gold Piece = 1 Gold Pennies",
                    rightImage: .goldpenny
                )
                
                ExchangeRate(
                    lefImage: .goldpenny,
                    text: "1 Gold Penny = 4 Silver Pieces",
                    rightImage: .silverpiece
                )
                
                ExchangeRate(
                    lefImage: .silverpiece ,
                    text: "1 Silver Piece = 4 Silver Pennies",
                    rightImage: .silverpenny
                )
                
                ExchangeRate(
                    lefImage: .silverpenny ,
                    text: "1 Silver Penny = 100 Copper Pennies",
                    rightImage: .copperpenny
                )
                
                // Done Button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .foregroundStyle(.white)
                .font(.largeTitle)
                .padding()
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}


