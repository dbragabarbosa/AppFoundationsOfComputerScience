//
//  LinearSearchViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 12/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class LinearSearchViewModelTests: XCTestCase
{
    func testLinearSearchViewModel_initialTitle_isCorrect()
    {
        // Arrange
        let viewModel = LinearSearchViewModel()
        
        // Act
        let title = viewModel.title
        
        // Assert
        XCTAssertEqual(title, "Entendendo Busca Linear", "O título inicial está incorreto.")
    }
    
    func testLinearSearchViewModel_initialExampleText_isCorrect()
    {
        // Arrange
        let viewModel = LinearSearchViewModel()
        
        // Act
        let exampleText = viewModel.exampleText
        
        // Assert
        XCTAssertEqual(exampleText, "Exemplo:", "O texto do exemplo inicial está incorreto.")
    }
    
    func testLinearSearchViewModel_initialDescription_isNotEmpty()
    {
        // Arrange
        let viewModel = LinearSearchViewModel()
        
        // Act
        let description = viewModel.description
        
        // Assert
        XCTAssertFalse(description.isEmpty, "A descrição inicial deveria estar preenchida.")
    }
    
    func testLinearSearchViewModel_exampleSteps_initialCount_isFive()
    {
        // Arrange
        let viewModel = LinearSearchViewModel()
        
        // Act
        let count = viewModel.exampleSteps.count
        
        // Assert
        XCTAssertEqual(count, 5, "A quantidade inicial de exemplos deveria ser 5.")
    }
    
    func testLinearSearchViewModel_exampleSteps_contentIsCorrect()
    {
        // Arrange
        let viewModel = LinearSearchViewModel()
        
        // Act
        let stackContent = viewModel.exampleSteps
        
        // Assert
        let expectedExamples = [
            "1. Lista: [3, 5, 7, 9, 11]",
            "2. Procurando o número 7...",
            "3. Comparar 7 com 3 (não é igual).",
            "4. Comparar 7 com 5 (não é igual).",
            "5. Comparar 7 com 7 (encontrado!)."
        ]
        
        XCTAssertEqual(stackContent, expectedExamples, "O conteúdo inicial de exemplos está incorreto.")
    }
    
    func testLinearSearchViewModel_description_contentIsCorrect()
    {
        // Arrange
        let viewModel = LinearSearchViewModel()
        
        // Act
        let description = viewModel.description
        
        // Assert
        let expectedDescription = """
            A busca linear é um algoritmo simples usado para encontrar um elemento em uma lista. O algoritmo percorre a lista sequencialmente, verificando cada elemento até encontrar o item desejado ou atingir o final da lista.

            Características:
            - Complexidade: O(n), onde n é o número de elementos.
            - Fácil de implementar.
            - Eficaz em listas pequenas ou quando a lista não está ordenada.
            """
        
        XCTAssertEqual(description, expectedDescription, "A descrição está incorreta.")
    }
}
