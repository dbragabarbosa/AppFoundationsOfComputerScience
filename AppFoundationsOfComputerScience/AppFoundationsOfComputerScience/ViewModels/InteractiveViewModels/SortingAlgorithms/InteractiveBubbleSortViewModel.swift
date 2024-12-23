//
//  InteractiveBubbleSortViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 23/12/24.
//

import Foundation
import SwiftUICore

class InteractiveBubbleSortViewModel: InteractiveSortingViewModel<Int>
{
    private var pass = 0

    func startSorting()
    {
        guard pass < list.count - 1 else
        {
            message = "Ordenação concluída!"
            resetState()
            return
        }

        currentIndex = 0
        var swapped = false

        DispatchQueue.global(qos: .userInitiated).async
        {
            for i in 0..<(self.list.count - 1 - self.pass)
            {
                DispatchQueue.main.async
                {
                    self.message = "Comparando \(self.list[i]) com \(self.list[i + 1])."
                    self.currentIndex = i
                    self.comparisonIndex = i + 1
                }
                Thread.sleep(forTimeInterval: 2.0)

                if self.list[i] > self.list[i + 1]
                {
                    DispatchQueue.main.async
                    {
                        self.message = "Trocando \(self.list[i]) com \(self.list[i + 1])."
                        self.swapElements(at: i, and: i + 1)
                        swapped = true
                    }
                    Thread.sleep(forTimeInterval: 2.0)
                }
            }

            DispatchQueue.main.async
            {
                if !swapped
                {
                    self.message = "Nenhuma troca foi feita. Lista está ordenada!"
                    self.pass = self.list.count - 1
                } else {
                    self.message = "Fim da passagem \(self.pass + 1). Próxima passagem iniciando..."
                }

                self.pass += 1
                self.startSorting()
            }
        }
    }

    override func getBackgroundColor(for index: Int) -> Color
    {
        if index == currentIndex || index == comparisonIndex {
            return Color.yellow
        } else if index >= list.count - pass {
            return Color.green
        }
        
        return Color.gray
    }
}
