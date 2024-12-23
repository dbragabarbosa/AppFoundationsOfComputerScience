//
//  BinarySearchModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 22/12/24.
//

import Foundation

struct BinarySearchModel {
    var list: [Int]
    var target: Int
    var lowIndex: Int
    var highIndex: Int

    init(list: [Int], target: Int) {
        self.list = list
        self.target = target
        self.lowIndex = 0
        self.highIndex = list.count - 1
    }
}
