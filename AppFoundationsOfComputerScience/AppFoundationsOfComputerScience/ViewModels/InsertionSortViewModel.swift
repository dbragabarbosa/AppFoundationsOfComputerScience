//
//  InsertionSortViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 09/12/24.
//

import Foundation

class InsertionSortViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Insertion Sort"
    
    @Published var exampleText: String = "Exemplo de Ordenação com Insertion Sort:"
    
    @Published var description: String = """
        O Insertion Sort é um algoritmo de ordenação que constrói a lista ordenada um elemento de cada vez, comparando cada elemento com os elementos já ordenados e os inserindo na posição correta.
        
        Características:
        - Complexidade de tempo: Melhor caso O(n), Pior caso O(n²).
        - Eficiente para listas pequenas ou quase ordenadas.
        - Ordenação estável, preserva a ordem relativa dos elementos iguais.
        """
    
    @Published var exampleSteps: [String] = [
        "Lista inicial: [8, 4, 2, 6]",
        "1. Compare o segundo elemento (4) com o primeiro (8) e insira antes.",
        "   Lista atual: [4, 8, 2, 6]",
        "2. Compare o terceiro elemento (2) com os anteriores e insira antes do 4.",
        "   Lista atual: [2, 4, 8, 6]",
        "3. Compare o último elemento (6) com os anteriores e insira após o 4.",
        "   Lista ordenada: [2, 4, 6, 8]"
    ]
}
