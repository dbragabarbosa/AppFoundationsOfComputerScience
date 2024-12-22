//
//  InteractiveLinearSearchViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 22/12/24.
//

import Foundation
import SwiftUI

class InteractiveLinearSearchViewModel: ObservableObject
{
    @Published var list: [Int] = [3, 5, 7, 9, 11]
    @Published var targetInput: String = ""
    @Published var currentIndex: Int? = nil
    @Published var target: Int? = nil
    @Published var statusMessage: String? = nil

    private var searchInProgress = false

    func startSearch() {
        guard let target = Int(targetInput), !searchInProgress else { return }
        self.target = target
        self.currentIndex = nil
        self.statusMessage = "Iniciando a busca pelo número \(target)."
        searchInProgress = true

        performSearch()
    }

    private func performSearch() {
        guard let target = target else { return }

        for (index, number) in list.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.8) {
                guard self.searchInProgress else { return }

                self.currentIndex = index
                if number == target {
                    self.statusMessage = "Número \(number) encontrado na posição \(index)."
                    self.searchInProgress = false
                } else {
                    self.statusMessage = "Comparando \(number) com \(target). Não é igual."
                }

                if index == self.list.count - 1 && self.searchInProgress {
                    self.statusMessage = "Número \(target) não encontrado na lista."
                    self.searchInProgress = false
                }
            }
        }
    }

    func getBackgroundColor(for index: Int) -> Color {
        guard let currentIndex = currentIndex else { return Color.gray }

        if index == currentIndex {
            if list[index] == target {
                return Color.green
            } else {
                return Color.red
            }
        }

        return Color.gray
    }

    func getOffset(for index: Int) -> CGFloat {
        guard let currentIndex = currentIndex else { return 0 }

        if index == currentIndex {
            return -10
        }

        return 0
    }
}
