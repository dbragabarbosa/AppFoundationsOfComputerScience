//
//  QueueViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 09/12/24.
//

import Foundation

class QueueViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Filas"
    
    @Published var exampleText: String = "Exemplo:"
        
    @Published var description: String = """
        Uma fila (Queue) é uma estrutura de dados que segue o princípio FIFO (First In, First Out), onde o primeiro elemento inserido é o primeiro a ser removido.
        
        Operações básicas:
        - Enqueue: Adicionar um item à fila.
        - Dequeue: Remover o item da frente da fila.
        """
    
    @Published var exampleQueue: [String] = [
        "1. Adicionar (Enqueue) o número 10",
        "2. Adicionar (Enqueue) o número 20",
        "3. Remover (Dequeue) o número 10 (Frente da fila)",
        "4. O número 20 é agora o próximo da fila"
    ]
}
