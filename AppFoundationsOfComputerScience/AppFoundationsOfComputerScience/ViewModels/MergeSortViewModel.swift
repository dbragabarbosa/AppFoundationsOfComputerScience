//
//  MergeSortViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 09/12/24.
//

import Foundation

class MergeSortViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Merge Sort"
    
    @Published var exampleText: String = "Exemplo de Ordenação com Merge Sort:"
    
    @Published var description: String = """
        O Merge Sort é um algoritmo de ordenação baseado na técnica de divisão e conquista. Ele divide a lista em duas metades, ordena cada metade recursivamente e depois as combina de maneira ordenada. 
        É eficiente, especialmente para listas grandes, com uma complexidade de tempo de O(n log n) no melhor, pior e caso médio.
        
        Características:
        - Complexidade de tempo: O(n log n).
        - Ordenação estável.
        - Usado para grandes listas, especialmente quando a memória é suficiente.
        """
    
    @Published var exampleSteps: [String] = [
        "Lista inicial: [8, 3, 1, 5, 2, 7, 4, 6]",
        "Divida a lista em duas metades: [8, 3, 1, 5] e [2, 7, 4, 6].",
        "Recursivamente divida as duas metades até ter sublistas de um único elemento.",
        "Sublistas: [8], [3], [1], [5], [2], [7], [4], [6].",
        "Combine as sublistas ordenadas: [3, 8], [1, 5], [2, 7], [4, 6].",
        "Combine as sublistas novamente: [1, 3, 5, 8], [2, 4, 6, 7].",
        "Combine as duas listas ordenadas: [1, 2, 3, 4, 5, 6, 7, 8].",
        "Lista ordenada: [1, 2, 3, 4, 5, 6, 7, 8]."
    ]
}
