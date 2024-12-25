//
//  InteractiveBigOViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 25/12/24.
//

import Foundation
import SwiftUI

class InteractiveBigOViewModel: ObservableObject
{
    @Published var inputSize: String = ""
    @Published var selectedAlgorithm: BigOModel?
    @Published var result: String = ""
    
    let operationsPerSecond: Int = 100_000
    
    let algorithms: [BigOModel] = [
        BigOModel(
            name: "O(1) - Constante",
            complexity: { _ in 1 },
            description: "Operação que tem tempo constante, independente do tamanho da entrada."
        ),
        BigOModel(
            name: "O(log n) - Logarítmica",
            complexity: { n in n > 0 ? Int(log2(Double(n))) : 0 },
            description: "Operação cujo tempo cresce logaritimicamente com a entrada."
        ),
        BigOModel(
            name: "O(n) - Linear",
            complexity: { n in n },
            description: "Operação cujo tempo cresce linearmente com a entrada."
        ),
        BigOModel(
            name: "O(n log n) - Quase Linear",
            complexity: { n in n * Int(log2(Double(n))) },
            description: "Operação comum em algoritmos de ordenação eficientes."
        ),
        BigOModel(
            name: "O(n^2) - Quadrática",
            complexity: { n in n * n },
            description: "Operação cujo tempo cresce quadraticamente com a entrada."
        )
    ]
    
    func simulate()
    {
        guard let size = Int(inputSize), let algorithm = selectedAlgorithm else {
            result = "Por favor, insira um tamanho de entrada válido e escolha um algoritmo."
            return
        }
        
        let operations = algorithm.complexity(size)
        let simulatedTimeInSeconds = Double(operations) / Double(operationsPerSecond)
        let formattedTime = formatSimulatedTime(simulatedTimeInSeconds)
        
        result = """
        Algoritmo: \(algorithm.name)
        Entrada: \(size)
        Tempo Simulado: \(formattedTime)
        Descrição: \(algorithm.description)
        """
    }
    
    private func formatSimulatedTime(_ timeInSeconds: Double) -> String
    {
        if timeInSeconds < 1 {
            let milliseconds = timeInSeconds * 1_000
            return String(format: "%.2f milissegundos", milliseconds)
        } else if timeInSeconds < 60 {
            return String(format: "%.2f segundos", timeInSeconds)
        } else if timeInSeconds < 3600 {
            let minutes = timeInSeconds / 60
            return String(format: "%.2f minutos", minutes)
        } else {
            let hours = timeInSeconds / 3600
            return String(format: "%.2f horas", hours)
        }
    }
}


