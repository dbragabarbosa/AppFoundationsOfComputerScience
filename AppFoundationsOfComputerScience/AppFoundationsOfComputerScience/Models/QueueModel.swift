//
//  QueueModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 21/12/24.
//

struct Queue<T>
{
    private var elements: [T] = []
    
    mutating func enqueue(_ item: T)
    {
        elements.append(item)
    }
    
    mutating func dequeue() -> T?
    {
        guard !elements.isEmpty else { return nil }
        return elements.removeFirst()
    }
    
    func peek() -> T?
    {
        elements.first
    }
    
    var isEmpty: Bool
    {
        elements.isEmpty
    }
    
    var allElements: [T]
    {
        elements
    }
}
