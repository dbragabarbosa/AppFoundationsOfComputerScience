//
//  QueueViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 10/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class QueueViewModelTests: XCTestCase
{
    func test_title_shouldBeCorrect()
    {
        // Arrange
        let viewModel = QueueViewModel()
        
        // Act
        let title = viewModel.title
        
        // Assert
        XCTAssertEqual(title, "Entendendo Filas", "The title should match the expected value.")
    }

    func test_exampleText_shouldBeCorrect()
    {
        // Arrange
        let viewModel = QueueViewModel()
        
        // Act
        let exampleText = viewModel.exampleText
        
        // Assert
        XCTAssertEqual(exampleText, "Exemplo:", "The exampleText should match the expected value.")
    }

    func test_description_shouldBeCorrect()
    {
        // Arrange
        let viewModel = QueueViewModel()
        
        // Act
        let description = viewModel.description
        
        // Assert
        XCTAssertEqual(description, """
            Uma fila (Queue) é uma estrutura de dados que segue o princípio FIFO (First In, First Out), onde o primeiro elemento inserido é o primeiro a ser removido.
            
            Operações básicas:
            - Enqueue: Adicionar um item à fila.
            - Dequeue: Remover o item da frente da fila.
            """, "The description should match the expected value.")
    }

    func test_exampleQueue_shouldContainCorrectItems()
    {
        // Arrange
        let viewModel = QueueViewModel()
        
        // Act
        let exampleQueue = viewModel.exampleQueue
        
        // Assert
        XCTAssertEqual(exampleQueue.count, 4, "The exampleQueue should contain 4 items.")
        XCTAssertEqual(exampleQueue[0], "1. Adicionar (Enqueue) o número 10", "The first exampleQueue item is incorrect.")
        XCTAssertEqual(exampleQueue[1], "2. Adicionar (Enqueue) o número 20", "The second exampleQueue item is incorrect.")
        XCTAssertEqual(exampleQueue[2], "3. Remover (Dequeue) o número 10 (Frente da fila)", "The third exampleQueue item is incorrect.")
        XCTAssertEqual(exampleQueue[3], "4. O número 20 é agora o próximo da fila", "The fourth exampleQueue item is incorrect.")
    }
}
