//
//  InteractiveStackViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 21/12/24.
//

import Foundation

class InteractiveStackViewModel: ObservableObject
{
    @Published var userInput: String = ""
    @Published var currentStack: [String] = []
    
    func pushToStack()
    {
        if !userInput.isEmpty
        {
            currentStack.append(userInput)
            userInput = ""
        }
    }
    
    func popFromStack()
    {
        if !currentStack.isEmpty
        {
            currentStack.removeLast()
        }
    }
}
