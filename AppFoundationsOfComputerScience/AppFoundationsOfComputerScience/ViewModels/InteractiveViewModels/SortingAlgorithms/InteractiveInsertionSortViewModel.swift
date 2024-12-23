//
//  InteractiveInsertionSortViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 23/12/24.
//

import Foundation
import SwiftUICore

class InteractiveInsertionSortViewModel: InteractiveSortingViewModel<Int>
{
    private var iteration = 1

    func startSorting()
    {
        guard iteration < list.count else {
            message = "Ordenação concluída!"
            resetState()
            return
        }

        currentIndex = iteration
        var comparisonIndex = iteration

        DispatchQueue.global(qos: .userInitiated).async
        {
            while comparisonIndex > 0 && self.list[comparisonIndex] < self.list[comparisonIndex - 1]
            {
                DispatchQueue.main.async
                {
                    self.message = "Comparando \(self.list[comparisonIndex]) com \(self.list[comparisonIndex - 1])."
                    self.currentIndex = comparisonIndex
                    self.comparisonIndex = comparisonIndex - 1
                }
                Thread.sleep(forTimeInterval: 2.0)

                DispatchQueue.main.async
                {
                    self.swapElements(at: comparisonIndex, and: comparisonIndex - 1)
                    self.message = "Trocando \(self.list[comparisonIndex]) com \(self.list[comparisonIndex - 1])."
                }
                Thread.sleep(forTimeInterval: 2.0)

                comparisonIndex -= 1
            }

            DispatchQueue.main.async
            {
                self.message = "\(self.list[self.iteration]) está na posição correta."
                self.iteration += 1
                self.startSorting()
            }
        }
    }

    override func getBackgroundColor(for index: Int) -> Color
    {
        if index == currentIndex {
            return Color.yellow
        } else if index == comparisonIndex {
            return Color.yellow
        } else if index < iteration {
            return Color.green
        }
        
        return Color.gray
    }
}
