//
//  InteractiveArrayViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 24/12/24.
//

import Foundation
import SwiftUI

class InteractiveArrayViewModel: ObservableObject
{
    @Published var userInput: String = ""
    @Published var currentArray: [String?] = []
    @Published var selectedIndex: String = ""
    @Published var isArrayConfigured = false
    
    func configureArray(size: Int)
    {
        guard size > 0 else { return }
        currentArray = Array(repeating: nil, count: size)
        isArrayConfigured = true
    }
    
    func addToIndex(index: Int, value: String) -> Bool
    {
        guard index >= 0 && index < currentArray.count else { return false }
        currentArray[index] = value
        return true
    }
    
    func removeFromIndex(index: Int) -> Bool
    {
        guard index >= 0 && index < currentArray.count else { return false }
        currentArray[index] = nil
        return true
    }
}
