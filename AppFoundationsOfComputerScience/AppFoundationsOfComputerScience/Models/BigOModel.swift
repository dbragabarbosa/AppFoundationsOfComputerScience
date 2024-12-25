//
//  BigOModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 25/12/24.
//

import Foundation

struct BigOModel
{
    let name: String
    let complexity: (Int) -> Int
    let description: String
}

struct BigOAlgorithm
{
    let name: String
    let complexity: (Int) -> Double
    
    func simulatedTime(forInputSize size: Int) -> Double
    {
        return complexity(size)
    }
}
