//
//  BigOViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 09/12/24.
//

import Foundation

class BigOViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Big-O"
    
    @Published var exampleText: String = "Exemplo de Complexidade:"
    
    @Published var description: String = """
        Big-O é uma notação matemática usada para descrever a eficiência de algoritmos, principalmente em termos de tempo de execução e uso de memória, à medida que o tamanho da entrada cresce.

        Principais Complexidades:
        - O(1): Tempo constante, independente do tamanho da entrada.
        - O(log n): Tempo logarítmico, comum em busca binária.
        - O(n): Tempo linear, onde cada elemento é processado uma vez.
        - O(n log n): Eficiência de algoritmos de ordenação eficientes, como Merge Sort.
        - O(n²): Tempo quadrático, típico de algoritmos ineficientes como Bubble Sort.
        """
    
    @Published var exampleSteps: [String] = [
        "1. O(1): Acessar diretamente um índice em uma lista.",
        "2. O(log n): Dividir uma lista ordenada em partes (Busca Binária).",
        "3. O(n): Percorrer todos os elementos de uma lista.",
        "4. O(n log n): Ordenar uma lista usando Merge Sort.",
        "5. O(n²): Comparar todos os pares em uma lista (Bubble Sort)."
    ]
}
