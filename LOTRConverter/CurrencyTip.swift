//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Jean Camargo on 07/12/25.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    var message: Text? = Text("You can tap the left or right currency to bring up the Select Currency scrren")
    var image: Image? = Image(systemName: "hand.tap.fill")
}
