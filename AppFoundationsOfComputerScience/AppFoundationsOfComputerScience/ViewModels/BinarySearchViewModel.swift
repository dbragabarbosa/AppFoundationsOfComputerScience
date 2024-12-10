//
//  BinarySearchViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 09/12/24.
//

import Foundation

class BinarySearchViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Busca Binária"
    
    @Published var exampleText: String = "Exemplo:"
    
    @Published var description: String = """
        A busca binária é um algoritmo eficiente para encontrar um elemento em uma lista ordenada. O algoritmo divide repetidamente a lista ao meio e reduz o espaço de busca pela metade a cada passo.

        Características:
        - Complexidade: O(log n), onde n é o número de elementos.
        - Requer que a lista esteja ordenada.
        - Muito mais rápido que a busca linear em grandes conjuntos de dados.
        """
    
    @Published var exampleSteps: [String] = [
        "1. Lista ordenada: [2, 4, 6, 8, 10, 12, 14]",
        "2. Procurando o número 10...",
        "3. Verificar o elemento do meio (8).",
        "4. 10 é maior que 8, então considere a metade direita.",
        "5. Verificar o novo meio (12).",
        "6. 10 é menor que 12, então considere a metade esquerda.",
        "7. Verificar o novo meio (10).",
        "8. Número 10 encontrado!"
    ]
}
