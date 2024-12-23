//
//  InteractiveSortingViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 22/12/24.
//

import Foundation
import SwiftUICore
import SwiftUI

class InteractiveSortingViewModel<T: Comparable>: ObservableObject
{
    @Published var list: [T] = []
    @Published var currentIndex: Int? = nil
    @Published var comparisonIndex: Int? = nil
    @Published var message: String? = nil

    func setupList(_ initialList: [T])
    {
        list = initialList
        resetState()
        message = "Lista inicial pronta!"
    }

    func swapElements(at firstIndex: Int, and secondIndex: Int)
    {
        guard firstIndex != secondIndex else { return }
        list.swapAt(firstIndex, secondIndex)
    }

    func resetState()
    {
        currentIndex = nil
        comparisonIndex = nil
        message = nil
    }

    func getBackgroundColor(for index: Int) -> Color
    {
        if index == currentIndex {
            return .yellow
        } else if index == comparisonIndex {
            return .red
        }
        return .gray
    }
}
