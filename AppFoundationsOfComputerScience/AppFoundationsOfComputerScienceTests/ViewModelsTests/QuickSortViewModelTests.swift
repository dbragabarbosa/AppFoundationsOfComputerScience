//
//  QuickSortViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 12/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class QuickSortViewModelTests: XCTestCase
{

    private var viewModel: QuickSortViewModel!

    override func setUp()
    {
        super.setUp()
        viewModel = QuickSortViewModel()
    }

    override func tearDown()
    {
        viewModel = nil
        super.tearDown()
    }

    func test_initialTitle_shouldBeEntendendoQuickSort()
    {
        // Assert
        XCTAssertEqual(viewModel.title, "Entendendo Quick Sort", "The initial title should be 'Entendendo Quick Sort'.")
    }

    func test_initialExampleText_shouldBeExemploDeOrdenacaoComQuickSort()
    {
        // Assert
        XCTAssertEqual(viewModel.exampleText, "Exemplo de Ordenação com Quick Sort:", "The initial example text should be 'Exemplo de Ordenação com Quick Sort:'.")
    }

    func test_initialDescription_shouldMatchExpectedText()
    {
        // Arrange
        let expectedDescription = """
            O Quick Sort é um algoritmo de ordenação eficiente baseado na técnica de divisão e conquista. Ele escolhe um elemento como "pivô" e particiona o array em dois subarrays, um com elementos menores que o pivô e outro com elementos maiores, e recursivamente aplica o mesmo processo nos subarrays.
            
            Características:
            - Complexidade de tempo: Melhor caso O(n log n), Pior caso O(n²) (se o pivô não for bem escolhido).
            - Ordenação instável.
            - Usado frequentemente devido à sua eficiência na prática.
            """

        // Assert
        XCTAssertEqual(viewModel.description, expectedDescription, "The description does not match the expected text.")
    }

    func test_initialExampleSteps_shouldMatchExpectedArray()
    {
        // Arrange
        let expectedSteps = [
            "Lista inicial: [8, 3, 1, 5, 2, 7, 4, 6]",
            "Escolha o pivô (por exemplo, 5).",
            "Particione a lista em dois subarrays: [3, 1, 2, 4] e [7, 6, 8].",
            "Recursivamente aplique o Quick Sort nos dois subarrays.",
            "Subarray [3, 1, 2, 4]: Escolha o pivô (por exemplo, 2).",
            "Particione a lista em dois subarrays: [1] e [3, 4].",
            "Recursivamente aplique o Quick Sort nos dois subarrays.",
            "Subarray [3, 4]: Escolha o pivô (por exemplo, 4).",
            "Particione a lista em dois subarrays: [3] e [] (subarray vazio).",
            "Combine as listas ordenadas e obtenha a lista final ordenada.",
            "Lista ordenada: [1, 2, 3, 4, 5, 6, 7, 8]"
        ]

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, expectedSteps, "The example steps should match the expected array.")
    }

    func test_updateTitle_shouldReflectNewValue()
    {
        // Act
        viewModel.title = "Nova explicação sobre Quick Sort"

        // Assert
        XCTAssertEqual(viewModel.title, "Nova explicação sobre Quick Sort", "The title should reflect the new value after being updated.")
    }

    func test_updateDescription_shouldReflectNewValue()
    {
        // Arrange
        let newDescription = "Descrição atualizada para Quick Sort."

        // Act
        viewModel.description = newDescription

        // Assert
        XCTAssertEqual(viewModel.description, newDescription, "The description should reflect the new value after being updated.")
    }

    func test_updateExampleSteps_shouldReflectNewValue()
    {
        // Arrange
        let newExampleSteps = [
            "Lista inicial: [9, 4, 7]",
            "Escolha o pivô (por exemplo, 4).",
            "Particione a lista em dois subarrays: [] e [7, 9].",
            "Combine as listas ordenadas para obter [4, 7, 9]."
        ]

        // Act
        viewModel.exampleSteps = newExampleSteps

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, newExampleSteps, "The example steps should reflect the new value after being updated.")
    }
}
