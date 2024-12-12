//
//  StackViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 10/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class StackViewModelTests: XCTestCase
{
    func testStackViewModel_initialTitle_isCorrect()
    {
        // Arrange
        let viewModel = StackViewModel()
        
        // Act
        let title = viewModel.title
        
        // Assert
        XCTAssertEqual(title, "Entendendo Pilhas", "O título inicial está incorreto.")
    }
    
    func testStackViewModel_initialExampleText_isCorrect()
    {
        // Arrange
        let viewModel = StackViewModel()
        
        // Act
        let exampleText = viewModel.exampleText
        
        // Assert
        XCTAssertEqual(exampleText, "Exemplo:", "O texto do exemplo inicial está incorreto.")
    }
    
    func testStackViewModel_initialDescription_isNotEmpty()
    {
        // Arrange
        let viewModel = StackViewModel()
        
        // Act
        let description = viewModel.description
        
        // Assert
        XCTAssertFalse(description.isEmpty, "A descrição inicial deveria estar preenchida.")
    }
    
    func testStackViewModel_exampleStack_initialCount_isFour()
    {
        // Arrange
        let viewModel = StackViewModel()
        
        // Act
        let count = viewModel.exampleStack.count
        
        // Assert
        XCTAssertEqual(count, 4, "A quantidade inicial de exemplos deveria ser 4.")
    }
    
    func testStackViewModel_exampleStack_contentIsCorrect()
    {
        // Arrange
        let viewModel = StackViewModel()
        
        // Act
        let stackContent = viewModel.exampleStack
        
        // Assert
        let expectedExamples = [
            "1. Adicionar (Push) o número 10",
            "2. Adicionar (Push) o número 20",
            "3. Remover (Pop) o número 20 (Topo da pilha)",
            "4. O número 10 é agora o topo"
        ]
        
        XCTAssertEqual(stackContent, expectedExamples, "O conteúdo inicial da pilha de exemplos está incorreto.")
    }
    
    func testStackViewModel_description_containsPushAndPop()
    {
        // Arrange
        let viewModel = StackViewModel()
        
        // Act
        let description = viewModel.description
        
        // Assert
        XCTAssertTrue(description.contains("Push"), "A descrição deveria mencionar 'Push'.")
        XCTAssertTrue(description.contains("Pop"), "A descrição deveria mencionar 'Pop'.")
    }
    
    func testStackViewModel_exampleStack_doesNotContainEmptyStrings()
    {
        // Arrange
        let viewModel = StackViewModel()
        
        // Act
        let stackContent = viewModel.exampleStack
        
        // Assert
        XCTAssertFalse(stackContent.contains(""), "A pilha de exemplos não deveria conter strings vazias.")
    }
}
