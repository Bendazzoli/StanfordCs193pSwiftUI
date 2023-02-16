//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Paulo Henrique Bendazzoli on 15/02/23.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return 0
    }
}
