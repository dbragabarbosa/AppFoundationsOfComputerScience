//
//  StackViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 09/12/24.
//

import Foundation

class StackViewModel: ObservableObject
{
    @Published var title: String = "Entendendo Pilhas"
    
    @Published var exampleText: String = "Exemplo:"
        
    @Published var description: String = """
        Uma pilha (Stack) é uma estrutura de dados que segue o princípio LIFO (Last In, First Out), onde o último elemento inserido é o primeiro a ser removido.
        
        Operações básicas:
        - Push: Adicionar um item à pilha.
        - Pop: Remover o item do topo da pilha.
        """
    
    @Published var exampleStack: [String] = [
        "1. Adicionar (Push) o número 10",
        "2. Adicionar (Push) o número 20",
        "3. Remover (Pop) o número 20 (Topo da pilha)",
        "4. O número 10 é agora o topo"
    ]
    
    @Published var interactiveExampleSteps: [String] = []
    
    @Published var currentStack: [String] = []
    
    @Published var userInput: String = ""
    
    private var stack = Stack<String>()
    
    func pushToStack()
    {
        guard !userInput.isEmpty else { return }
        stack.push(userInput)
        updateStack()
        userInput = ""
    }
    
    func popFromStack()
    {
        if let removed = stack.pop()
        {
            updateStack()
            interactiveExampleSteps.append("Removido (Pop): \(removed)")
        }
    }
    
    private func updateStack()
    {
        currentStack = stack.allElements()
    }
}

