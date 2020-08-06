//
//  AppleStore.Shopping.LargeItem.swift
//  Example
//
//  Created by Tomoya Hirano on 2020/08/07.
//

import SwiftUI

extension AppleStore.Shopping {
    struct LargeItem: View {
        let accessoryText: Text
        let nameText: Text
        let descriptionText: Text
        let image: Image
        let priceText: Text
        let purchaseAction: () -> Void
        
        var body: some View {
            ZStack {
                image.resizable().scaledToFill()
                VStack(spacing: 0) {
                    VStack(alignment: .leading, spacing: 8) {
                        VStack(alignment: .leading) {
                            accessoryText.font(.caption)
                            nameText.font(.largeTitle).bold()
                        }
                        descriptionText
                            .font(.caption).lineLimit(4)
                    }.padding()
                    Spacer()
                        .frame(height: 400)
                    HStack {
                        priceText.font(.caption2)
                        Spacer()
                        AppleStore.Shopping.PurchaseButton(action: purchaseAction)
                    }.padding()
                }
            }
        }
    }
}

struct AppleStoreShoppingLargeItem_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            //Image("AppleStore/Shopping/Screenshot").opacity(0.0)
            AppleStore.Shopping.LargeItem(
                accessoryText: Text("NEW"),
                nameText: Text("iMac"),
                descriptionText: Text("iMac史上最速のプロセッサとグラフィックス、オールフラッシュストレージを搭載。Nano-textureディスプレイのオプションも用意しました。"),
                image: Image("AppleStore/Shopping/iMac"),
                priceText: Text("120,800円（税別）から"),
                purchaseAction: {
                    
                }
            )
        }.previewLayout(.sizeThatFits)
    }
}
