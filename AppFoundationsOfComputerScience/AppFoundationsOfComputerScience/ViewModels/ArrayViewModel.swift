//
//  ArrayViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 24/12/24.
//

import Foundation

class ArrayViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Arrays"
    
    @Published var exampleText: String = "Exemplo:"
    
    @Published var description: String = """
        Um array é uma estrutura de dados que armazena elementos de tamanho fixo, do mesmo tipo, em posições contíguas de memória. Ele é indexado, com índices começando em 0.

        Características principais:
        - Os elementos podem ser acessados diretamente usando o índice.
        - Tamanho fixo: Não pode ser alterado após a criação.
        """
    
    @Published var exampleSteps: [String] = [
        "Criar um array com 5 elementos: [10, 20, 30, 40, 50]",
        "Acessar o terceiro elemento (índice 2): 30",
        "Atualizar o valor do segundo elemento (índice 1) para 25: [10, 25, 30, 40, 50]"
    ]
}
