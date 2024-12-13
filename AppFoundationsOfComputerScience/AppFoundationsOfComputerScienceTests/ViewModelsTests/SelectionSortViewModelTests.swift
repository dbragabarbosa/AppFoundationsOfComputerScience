//
//  SelectionSortViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 12/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class SelectionSortViewModelTests: XCTestCase
{

    private var viewModel: SelectionSortViewModel!

    override func setUp()
    {
        super.setUp()
        viewModel = SelectionSortViewModel()
    }

    override func tearDown()
    {
        viewModel = nil
        super.tearDown()
    }

    func test_initialTitle_shouldBeEntendendoSelectionSort()
    {
        // Assert
        XCTAssertEqual(viewModel.title, "Entendendo Selection Sort", "The initial title should be 'Entendendo Selection Sort'.")
    }

    func test_initialExampleText_shouldBeExemploDeOrdenacaoComSelectionSort()
    {
        // Assert
        XCTAssertEqual(viewModel.exampleText, "Exemplo de Ordenação com Selection Sort:", "The initial example text should be 'Exemplo de Ordenação com Selection Sort:'.")
    }

    func test_initialDescription_shouldMatchExpectedText()
    {
        // Arrange
        let expectedDescription = """
            O Selection Sort é um algoritmo de ordenação simples que divide a lista em duas partes: a parte ordenada e a parte não ordenada. 
            A cada iteração, o menor elemento da parte não ordenada é selecionado e trocado com o primeiro elemento da parte não ordenada.

            Características:
            - Complexidade de tempo: O(n²) no melhor, médio e pior caso.
            - Utiliza comparações para encontrar o menor elemento.
            - É ineficiente para grandes listas.
            """

        // Assert
        XCTAssertEqual(viewModel.description, expectedDescription, "The description does not match the expected text.")
    }

    func test_initialExampleSteps_shouldMatchExpectedArray()
    {
        // Arrange
        let expectedSteps = [
            "Lista inicial: [29, 10, 14, 37, 13]",
            "1. Encontre o menor elemento: 10. Troque com o primeiro elemento.",
            "   Lista atual: [10, 29, 14, 37, 13]",
            "2. Encontre o próximo menor elemento: 13. Troque com o segundo elemento.",
            "   Lista atual: [10, 13, 14, 37, 29]",
            "3. Continue até a lista estar ordenada: [10, 13, 14, 29, 37]"
        ]

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, expectedSteps, "The example steps should match the expected array.")
    }

    func test_updateTitle_shouldReflectNewValue()
    {
        // Act
        viewModel.title = "Nova explicação sobre Selection Sort"

        // Assert
        XCTAssertEqual(viewModel.title, "Nova explicação sobre Selection Sort", "The title should reflect the new value after being updated.")
    }

    func test_updateDescription_shouldReflectNewValue()
    {
        // Arrange
        let newDescription = "Descrição atualizada para Selection Sort."

        // Act
        viewModel.description = newDescription

        // Assert
        XCTAssertEqual(viewModel.description, newDescription, "The description should reflect the new value after being updated.")
    }

    func test_updateExampleSteps_shouldReflectNewValue()
    {
        // Arrange
        let newExampleSteps = [
            "Lista inicial: [50, 40, 30, 20, 10]",
            "1. Encontre o menor elemento: 10. Troque com o primeiro elemento.",
            "   Lista atual: [10, 40, 30, 20, 50]",
            "2. Continue até a lista estar ordenada: [10, 20, 30, 40, 50]"
        ]

        // Act
        viewModel.exampleSteps = newExampleSteps

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, newExampleSteps, "The example steps should reflect the new value after being updated.")
    }
}
