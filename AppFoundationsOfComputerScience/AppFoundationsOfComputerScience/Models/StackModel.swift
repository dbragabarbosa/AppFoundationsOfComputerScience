//
//  StackModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 21/12/24.
//

import Foundation

struct Stack<T>
{
    private var elements: [T] = []
    
    mutating func push(_ element: T)
    {
        elements.append(element)
    }
    
    mutating func pop() -> T?
    {
        return elements.popLast()
    }
    
    func peek() -> T?
    {
        return elements.last
    }
    
    func isEmpty() -> Bool
    {
        return elements.isEmpty
    }
    
    func allElements() -> [T]
    {
        return elements
    }
}
