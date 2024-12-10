//
//  QuickSortViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 09/12/24.
//

import Foundation

class QuickSortViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Quick Sort"
    
    @Published var exampleText: String = "Exemplo de Ordenação com Quick Sort:"
    
    @Published var description: String = """
        O Quick Sort é um algoritmo de ordenação eficiente baseado na técnica de divisão e conquista. Ele escolhe um elemento como "pivô" e particiona o array em dois subarrays, um com elementos menores que o pivô e outro com elementos maiores, e recursivamente aplica o mesmo processo nos subarrays.
        
        Características:
        - Complexidade de tempo: Melhor caso O(n log n), Pior caso O(n²) (se o pivô não for bem escolhido).
        - Ordenação instável.
        - Usado frequentemente devido à sua eficiência na prática.
        """
    
    @Published var exampleSteps: [String] = [
        "Lista inicial: [8, 3, 1, 5, 2, 7, 4, 6]",
        "Escolha o pivô (por exemplo, 5).",
        "Particione a lista em dois subarrays: [3, 1, 2, 4] e [7, 6, 8].",
        "Recursivamente aplique o Quick Sort nos dois subarrays.",
        "Subarray [3, 1, 2, 4]: Escolha o pivô (por exemplo, 2).",
        "Particione a lista em dois subarrays: [1] e [3, 4].",
        "Recursivamente aplique o Quick Sort nos dois subarrays.",
        "Subarray [3, 4]: Escolha o pivô (por exemplo, 4).",
        "Particione a lista em dois subarrays: [3] e [] (subarray vazio).",
        "Combine as listas ordenadas e obtenha a lista final ordenada.",
        "Lista ordenada: [1, 2, 3, 4, 5, 6, 7, 8]"
    ]
}
