//
//  Array+Only.swift
//  Memorize
//
//  Created by Paulo Henrique Bendazzoli on 28/02/23.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
