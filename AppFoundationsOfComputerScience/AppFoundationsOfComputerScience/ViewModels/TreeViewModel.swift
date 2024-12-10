//
//  TreeViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 09/12/24.
//

import Foundation

class TreeViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Árvores"
    
    @Published var exampleText: String = "Exemplo:"
    
    @Published var description: String = """
        Árvores são estruturas de dados hierárquicas formadas por nós, onde um nó principal (raiz) conecta-se a nós filhos. Cada nó pode ter zero ou mais filhos, e nós sem filhos são chamados de folhas.

        Principais conceitos:
        - Raiz: O nó principal da árvore.
        - Nó: Cada elemento da árvore.
        - Folhas: Nós sem filhos.
        - Altura: O comprimento do maior caminho da raiz até uma folha.
        """
    
    @Published var exampleTree: [String] = [
        "1. Raiz: 'A'",
        "2. Filhos da raiz: 'B', 'C'",
        "3. Filhos de 'B': 'D', 'E'",
        "4. Folha: 'D' (sem filhos)"
    ]
}
