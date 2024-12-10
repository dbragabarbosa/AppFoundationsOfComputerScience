//
//  LinearSearchViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 09/12/24.
//

import Foundation

class LinearSearchViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Busca Linear"
    
    @Published var exampleText: String = "Exemplo:"
    
    @Published var description: String = """
        A busca linear é um algoritmo simples usado para encontrar um elemento em uma lista. O algoritmo percorre a lista sequencialmente, verificando cada elemento até encontrar o item desejado ou atingir o final da lista.

        Características:
        - Complexidade: O(n), onde n é o número de elementos.
        - Fácil de implementar.
        - Eficaz em listas pequenas ou quando a lista não está ordenada.
        """
    
    @Published var exampleSteps: [String] = [
        "1. Lista: [3, 5, 7, 9, 11]",
        "2. Procurando o número 7...",
        "3. Comparar 7 com 3 (não é igual).",
        "4. Comparar 7 com 5 (não é igual).",
        "5. Comparar 7 com 7 (encontrado!)."
    ]
}
