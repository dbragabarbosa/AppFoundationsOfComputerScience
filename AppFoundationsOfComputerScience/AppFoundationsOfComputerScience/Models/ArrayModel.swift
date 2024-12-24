//
//  ArrayModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 24/12/24.
//

import Foundation

struct ArrayModel<T>
{
    private var elements: [T] = []
    
    mutating func addElement(_ element: T)
    {
        elements.append(element)
    }
    
    mutating func removeElement(at index: Int) -> T?
    {
        guard index >= 0 && index < elements.count else { return nil }
        return elements.remove(at: index)
    }
    
    func element(at index: Int) -> T?
    {
        guard index >= 0 && index < elements.count else { return nil }
        return elements[index]
    }
    
    func allElements() -> [T]
    {
        return elements
    }
    
    func count() -> Int
    {
        return elements.count
    }
}
