//
//  InteractiveSelectionSortViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 22/12/24.
//

import Foundation
import SwiftUICore

class InteractiveSelectionSortViewModel: InteractiveSortingViewModel<Int>
{
    private var iteration = 0
    private var minIndex: Int? = nil
    private var sortedIndices: Set<Int> = []

    func startSorting()
    {
        guard iteration < list.count else
        {
            message = "Ordenação concluída!"
            resetState()
            sortedIndices = Set(0..<list.count)
            return
        }

        minIndex = iteration
        currentIndex = iteration
        comparisonIndex = nil
        message = "Buscando o menor elemento a partir do índice \(iteration)..."

        DispatchQueue.global(qos: .userInitiated).async
        {
            for index in (self.iteration + 1)..<self.list.count
            {
                DispatchQueue.main.async
                {
                    self.comparisonIndex = index
                    self.message = "Comparando \(self.list[index]) com \(self.list[self.minIndex!])."
                }
                Thread.sleep(forTimeInterval: 2.0)

                if self.list[index] < self.list[self.minIndex!]
                {
                    DispatchQueue.main.async
                    {
                        self.minIndex = index
                        self.message = "\(self.list[index]) é o menor elemento encontrado até agora."
                    }
                    Thread.sleep(forTimeInterval: 2.0)
                }
            }

            DispatchQueue.main.async
            {
                self.swapElements(at: self.iteration, and: self.minIndex!)
                self.sortedIndices.insert(self.iteration) // Índice atual está ordenado
                self.message = "Trocando \(self.list[self.iteration]) com \(self.list[self.minIndex!])."
                self.iteration += 1
                self.startSorting()
            }
        }
    }

    override func getBackgroundColor(for index: Int) -> Color
    {
        if sortedIndices.contains(index) {
            return .green
        } else if index == minIndex || index == comparisonIndex {
            return .yellow
        } else {
            return .gray
        }
    }
}
