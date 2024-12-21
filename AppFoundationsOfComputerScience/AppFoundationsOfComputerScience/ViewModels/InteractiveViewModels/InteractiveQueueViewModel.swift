//
//  InteractiveQueueViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 21/12/24.
//

import Foundation

class InteractiveQueueViewModel: ObservableObject
{
    @Published private var queue = Queue<String>()
    
    @Published var newItem: String = ""
    
    @Published var elements: [String] = []
    
    func enqueue()
    {
        guard !newItem.isEmpty else { return }
        queue.enqueue(newItem)
        elements = queue.allElements
        newItem = ""
    }
    
    func dequeue()
    {
        queue.dequeue()
        elements = queue.allElements
    }
}
