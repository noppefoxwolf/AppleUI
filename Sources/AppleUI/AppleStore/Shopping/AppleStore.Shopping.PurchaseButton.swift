//
//  PurchaseButton.swift
//  Example
//
//  Created by Tomoya Hirano on 2020/08/07.
//

import SwiftUI

extension AppleStore.Shopping {
    struct PurchaseButton: View {
        let action: () -> Void
        var body: some View {
            Button(action: action, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(Color(UIColor.secondarySystemBackground))
                    Text("購入する")
                        .font(.caption2).bold()
                        .foregroundColor(.accentColor)
                        .padding([.leading, .trailing], 16)
                        .padding([.top, .bottom], 8)
                }.fixedSize()
            })
        }
    }
}

struct AppleStoreShoppingPurchaseButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleStore.Shopping.PurchaseButton(action: {})
            .previewLayout(.sizeThatFits)
    }
}
