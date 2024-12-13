//
//  MergeSortViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 12/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class MergeSortViewModelTests: XCTestCase
{

    private var viewModel: MergeSortViewModel!

    override func setUp()
    {
        super.setUp()
        viewModel = MergeSortViewModel()
    }

    override func tearDown()
    {
        viewModel = nil
        super.tearDown()
    }

    func test_initialTitle_shouldBeEntendendoMergeSort()
    {
        // Assert
        XCTAssertEqual(viewModel.title, "Entendendo Merge Sort", "The initial title should be 'Entendendo Merge Sort'.")
    }

    func test_initialExampleText_shouldBeExemploDeOrdenacaoComMergeSort()
    {
        // Assert
        XCTAssertEqual(viewModel.exampleText, "Exemplo de Ordenação com Merge Sort:", "The initial example text should be 'Exemplo de Ordenação com Merge Sort:'.")
    }

    func test_initialDescription_shouldMatchExpectedText()
    {
        // Arrange
        let expectedDescription = """
            O Merge Sort é um algoritmo de ordenação baseado na técnica de divisão e conquista. Ele divide a lista em duas metades, ordena cada metade recursivamente e depois as combina de maneira ordenada. 
            É eficiente, especialmente para listas grandes, com uma complexidade de tempo de O(n log n) no melhor, pior e caso médio.
            
            Características:
            - Complexidade de tempo: O(n log n).
            - Ordenação estável.
            - Usado para grandes listas, especialmente quando a memória é suficiente.
            """

        // Assert
        XCTAssertEqual(viewModel.description, expectedDescription, "The description does not match the expected text.")
    }

    func test_initialExampleSteps_shouldMatchExpectedArray()
    {
        // Arrange
        let expectedSteps = [
            "Lista inicial: [8, 3, 1, 5, 2, 7, 4, 6]",
            "Divida a lista em duas metades: [8, 3, 1, 5] e [2, 7, 4, 6].",
            "Recursivamente divida as duas metades até ter sublistas de um único elemento.",
            "Sublistas: [8], [3], [1], [5], [2], [7], [4], [6].",
            "Combine as sublistas ordenadas: [3, 8], [1, 5], [2, 7], [4, 6].",
            "Combine as sublistas novamente: [1, 3, 5, 8], [2, 4, 6, 7].",
            "Combine as duas listas ordenadas: [1, 2, 3, 4, 5, 6, 7, 8].",
            "Lista ordenada: [1, 2, 3, 4, 5, 6, 7, 8]."
        ]

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, expectedSteps, "The example steps should match the expected array.")
    }

    func test_updateTitle_shouldReflectNewValue()
    {
        // Act
        viewModel.title = "Nova explicação sobre Merge Sort"

        // Assert
        XCTAssertEqual(viewModel.title, "Nova explicação sobre Merge Sort", "The title should reflect the new value after being updated.")
    }

    func test_updateDescription_shouldReflectNewValue()
    {
        // Arrange
        let newDescription = "Descrição atualizada para Merge Sort."

        // Act
        viewModel.description = newDescription

        // Assert
        XCTAssertEqual(viewModel.description, newDescription, "The description should reflect the new value after being updated.")
    }

    func test_updateExampleSteps_shouldReflectNewValue()
    {
        // Arrange
        let newExampleSteps = [
            "Lista inicial: [10, 5, 2, 3]",
            "Divida a lista em duas metades: [10, 5] e [2, 3].",
            "Combine as sublistas ordenadas: [5, 10], [2, 3].",
            "Combine as duas listas ordenadas: [2, 3, 5, 10]."
        ]

        // Act
        viewModel.exampleSteps = newExampleSteps

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, newExampleSteps, "The example steps should reflect the new value after being updated.")
    }
}
