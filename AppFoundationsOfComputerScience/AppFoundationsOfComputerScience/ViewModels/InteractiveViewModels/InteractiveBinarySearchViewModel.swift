//
//  InteractiveBinarySearchViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 22/12/24.
//

import Foundation
import SwiftUI

class InteractiveBinarySearchViewModel: ObservableObject
{
    @Published var list: [Int] = [3, 5, 7, 9, 11]
    @Published var targetInput: String = ""
    @Published var message: String? = nil
    @Published var midIndex: Int? = nil

    private var target: Int? = nil
    private var lowIndex: Int = 0
    private var highIndex: Int = 0

    func startSearch()
    {
        guard let target = Int(targetInput) else
        {
            message = "Por favor, insira um número válido."
            return
        }

        self.target = target
        lowIndex = 0
        highIndex = list.count - 1
        midIndex = nil
        message = "Iniciando busca pelo número \(target)."
        performSearch()
    }

    private func performSearch()
    {
        guard let target = target else { return }

        DispatchQueue.global(qos: .userInitiated).async
        {
            while self.lowIndex <= self.highIndex
            {
                let mid = (self.lowIndex + self.highIndex) / 2
                DispatchQueue.main.async
                {
                    self.midIndex = mid
                    self.message = "Analisando número \(self.list[mid]) no índice \(mid)."
                }
                Thread.sleep(forTimeInterval: 1.5)

                if self.list[mid] == target
                {
                    DispatchQueue.main.async
                    {
                        self.message = "Número \(target) encontrado no índice \(mid)!"
                    }
                    return
                }
                else if self.list[mid] < target
                {
                    DispatchQueue.main.async
                    {
                        self.message = "\(target) é maior que \(self.list[mid]). Buscando na metade da frente."
                    }
                    self.lowIndex = mid + 1
                }
                else
                {
                    DispatchQueue.main.async
                    {
                        self.message = "\(target) é menor que \(self.list[mid]). Buscando na metade anterior."
                    }
                    self.highIndex = mid - 1
                }
                Thread.sleep(forTimeInterval: 1.5)
            }

            DispatchQueue.main.async
            {
                self.message = "Número \(target) não encontrado."
            }
        }
    }

    func getBackgroundColor(for index: Int) -> Color
    {
        guard let midIndex = midIndex else { return Color.gray }

        if index == midIndex
        {
            return list[index] == target ? Color.green : Color.red
        }
        return Color.gray
    }

    func getOffset(for index: Int) -> CGFloat
    {
        guard let midIndex = midIndex else { return 0 }

        return index == midIndex ? -10 : 0
    }
}

