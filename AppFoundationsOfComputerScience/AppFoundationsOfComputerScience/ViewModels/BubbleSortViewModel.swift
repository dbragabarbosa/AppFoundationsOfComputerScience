//
//  BubbleSortViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 09/12/24.
//

import Foundation

class BubbleSortViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Bubble Sort"
    
    @Published var exampleText: String = "Exemplo de Ordenação com Bubble Sort:"
    
    @Published var description: String = """
        O Bubble Sort é um algoritmo de ordenação simples que compara pares de elementos adjacentes e os troca de lugar se estiverem na ordem errada. Esse processo é repetido até que a lista esteja ordenada.
        
        Características:
        - Complexidade de tempo: Melhor caso O(n), Pior caso O(n²).
        - Não é muito eficiente para listas grandes.
        - Ordenação instável, pois pode trocar elementos iguais.
        """
    
    @Published var exampleSteps: [String] = [
        "Lista inicial: [5, 3, 8, 4, 2]",
        "1. Compare 5 e 3, troque-os.",
        "   Lista após troca: [3, 5, 8, 4, 2]",
        "2. Compare 5 e 8, não troque.",
        "   Lista permanece: [3, 5, 8, 4, 2]",
        "3. Compare 8 e 4, troque-os.",
        "   Lista após troca: [3, 5, 4, 8, 2]",
        "4. Compare 8 e 2, troque-os.",
        "   Lista após troca: [3, 5, 4, 2, 8]",
        "5. A primeira iteração conclui com o maior número (8) no final.",
        "   Repetir o processo até que todos os números estejam ordenados.",
        "   Lista ordenada: [2, 3, 4, 5, 8]"
    ]
}
