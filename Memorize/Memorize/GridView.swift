//
//  GridView.swift
//  Memorize
//
//  Created by Paulo Henrique Bendazzoli on 15/02/23.
//

import SwiftUI

struct GridView<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    var items: [Item]
    var viewForItem: (Item) -> ItemView

    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }

    var body: some View {
        GeometryReader { geometry in
            self.body(for: GridLayout(itemCount: self.items.count, in: geometry.size))
        }
    }

    func body(for layout: GridLayout) -> some View {
        ForEach(items) { item in
            let index = items.firstIndex(matching: item)
            viewForItem(item)
                .frame(width: layout.itemSize.width, height: layout.itemSize.height)
                .position(layout.location(ofItemAt: index))
        }
    }
}
