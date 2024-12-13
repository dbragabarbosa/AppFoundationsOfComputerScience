//
//  BubbleSortViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 12/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class BubbleSortViewModelTests: XCTestCase
{

    private var viewModel: BubbleSortViewModel!

    override func setUp()
    {
        super.setUp()
        viewModel = BubbleSortViewModel()
    }

    override func tearDown()
    {
        viewModel = nil
        super.tearDown()
    }

    func test_initialTitle_shouldBeEntendendoBubbleSort()
    {
        // Assert
        XCTAssertEqual(viewModel.title, "Entendendo Bubble Sort", "The initial title should be 'Entendendo Bubble Sort'.")
    }

    func test_initialExampleText_shouldBeExemploDeOrdenacaoComBubbleSort()
    {
        // Assert
        XCTAssertEqual(viewModel.exampleText, "Exemplo de Ordenação com Bubble Sort:", "The initial example text should be 'Exemplo de Ordenação com Bubble Sort:'.")
    }

    func test_initialDescription_shouldMatchExpectedText()
    {
        // Arrange
        let expectedDescription = """
            O Bubble Sort é um algoritmo de ordenação simples que compara pares de elementos adjacentes e os troca de lugar se estiverem na ordem errada. Esse processo é repetido até que a lista esteja ordenada.
            
            Características:
            - Complexidade de tempo: Melhor caso O(n), Pior caso O(n²).
            - Não é muito eficiente para listas grandes.
            - Ordenação instável, pois pode trocar elementos iguais.
            """

        // Assert
        XCTAssertEqual(viewModel.description, expectedDescription, "The description does not match the expected text.")
    }

    func test_initialExampleSteps_shouldMatchExpectedArray()
    {
        // Arrange
        let expectedSteps = [
            "Lista inicial: [5, 3, 8, 4, 2]",
            "1. Compare 5 e 3, troque-os.",
            "   Lista após troca: [3, 5, 8, 4, 2]",
            "2. Compare 5 e 8, não troque.",
            "   Lista permanece: [3, 5, 8, 4, 2]",
            "3. Compare 8 e 4, troque-os.",
            "   Lista após troca: [3, 5, 4, 8, 2]",
            "4. Compare 8 e 2, troque-os.",
            "   Lista após troca: [3, 5, 4, 2, 8]",
            "5. A primeira iteração conclui com o maior número (8) no final.",
            "   Repetir o processo até que todos os números estejam ordenados.",
            "   Lista ordenada: [2, 3, 4, 5, 8]"
        ]

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, expectedSteps, "The example steps should match the expected array.")
    }

    func test_updateTitle_shouldReflectNewValue()
    {
        // Act
        viewModel.title = "Nova explicação sobre Bubble Sort"

        // Assert
        XCTAssertEqual(viewModel.title, "Nova explicação sobre Bubble Sort", "The title should reflect the new value after being updated.")
    }

    func test_updateDescription_shouldReflectNewValue()
    {
        // Arrange
        let newDescription = "Descrição atualizada para Bubble Sort."

        // Act
        viewModel.description = newDescription

        // Assert
        XCTAssertEqual(viewModel.description, newDescription, "The description should reflect the new value after being updated.")
    }

    func test_updateExampleSteps_shouldReflectNewValue()
    {
        // Arrange
        let newExampleSteps = [
            "Lista inicial: [10, 7, 3]",
            "1. Compare 10 e 7, troque-os.",
            "   Lista após troca: [7, 10, 3]",
            "2. Compare 10 e 3, troque-os.",
            "   Lista após troca: [7, 3, 10]",
            "3. Continue até obter a lista ordenada: [3, 7, 10]"
        ]

        // Act
        viewModel.exampleSteps = newExampleSteps

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, newExampleSteps, "The example steps should reflect the new value after being updated.")
    }
}
