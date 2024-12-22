//
//  LinearSearchModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 22/12/24.
//

import Foundation

class LinearSearchModel
{
    func search(array: [Int], target: Int) -> [String]
    {
        var steps: [String] = []

        for (index, element) in array.enumerated() {
            steps.append("Comparando \(target) com \(element)...")
            if element == target
            {
                steps.append("Valor \(target) encontrado no índice \(index)!")
                return steps
            }
        }

        steps.append("Valor \(target) não encontrado na lista.")
        return steps
    }
}
