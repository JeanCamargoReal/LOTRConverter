//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Jean Camargo on 07/07/25.
//

import SwiftUI

struct SelectCurrency: View {
    var body: some View {
        @Environment(\.dismiss) var dismiss
        
        ZStack {
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency icon
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(0..<5) { _ in
                        CurrencyIcon(
                            currencyImage: .copperpenny,
                            currencyName: "Copper Penny"
                        )
                    }
                }
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
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
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
