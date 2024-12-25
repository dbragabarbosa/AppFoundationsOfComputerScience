//
//  SelectionSortViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 09/12/24.
//

import Foundation

class SelectionSortViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Selection Sort"
    
    @Published var exampleText: String = "Exemplo de Ordenação com Selection Sort:"
    
    @Published var description: String = """
        O Selection Sort é um algoritmo de ordenação simples que divide a lista em duas partes: a parte ordenada e a parte não ordenada. 
        A cada iteração, o menor elemento da parte não ordenada é selecionado e trocado com o primeiro elemento da parte não ordenada.

        Características:
        - Complexidade de tempo: O(n²) no melhor, médio e pior caso.
        - Utiliza comparações para encontrar o menor elemento.
        - É ineficiente para grandes listas.
        """
    
    @Published var exampleSteps: [String] = [
        "Lista inicial: [29, 10, 14, 37, 13]",
        "Encontre o menor elemento: 10. Troque com o primeiro elemento.",
        "   Lista atual: [10, 29, 14, 37, 13]",
        "Encontre o próximo menor elemento: 13. Troque com o segundo elemento.",
        "   Lista atual: [10, 13, 14, 37, 29]",
        "Continue até a lista estar ordenada: [10, 13, 14, 29, 37]"
    ]
}
