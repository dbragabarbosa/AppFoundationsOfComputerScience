//
//  BinarySearchViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 12/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class BinarySearchViewModelTests: XCTestCase {

    private var viewModel: BinarySearchViewModel!

    override func setUp() {
        super.setUp()
        viewModel = BinarySearchViewModel()
    }

    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }

    func test_initialTitle_shouldBeEntendendoBuscaBinaria() {
        // Assert
        XCTAssertEqual(viewModel.title, "Entendendo Busca Binária", "The initial title should be 'Entendendo Busca Binária'.")
    }

    func test_initialExampleText_shouldBeExemplo() {
        // Assert
        XCTAssertEqual(viewModel.exampleText, "Exemplo:", "The initial example text should be 'Exemplo:'.")
    }

    func test_initialDescription_shouldMatchExpectedText() {
        // Arrange
        let expectedDescription = """
            A busca binária é um algoritmo eficiente para encontrar um elemento em uma lista ordenada. O algoritmo divide repetidamente a lista ao meio e reduz o espaço de busca pela metade a cada passo.

            Características:
            - Complexidade: O(log n), onde n é o número de elementos.
            - Requer que a lista esteja ordenada.
            - Muito mais rápido que a busca linear em grandes conjuntos de dados.
            """

        // Assert
        XCTAssertEqual(viewModel.description, expectedDescription, "The description does not match the expected text.")
    }

    func test_initialExampleSteps_shouldMatchExpectedArray() {
        // Arrange
        let expectedSteps = [
            "1. Lista ordenada: [2, 4, 6, 8, 10, 12, 14]",
            "2. Procurando o número 10...",
            "3. Verificar o elemento do meio (8).",
            "4. 10 é maior que 8, então considere a metade direita.",
            "5. Verificar o novo meio (12).",
            "6. 10 é menor que 12, então considere a metade esquerda.",
            "7. Verificar o novo meio (10).",
            "8. Número 10 encontrado!"
        ]

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, expectedSteps, "The example steps should match the expected array.")
    }

    func test_updateTitle_shouldReflectNewValue() {
        // Act
        viewModel.title = "Nova Busca Binária"

        // Assert
        XCTAssertEqual(viewModel.title, "Nova Busca Binária", "The title should reflect the new value after being updated.")
    }

    func test_updateDescription_shouldReflectNewValue() {
        // Arrange
        let newDescription = "Nova descrição da busca binária."

        // Act
        viewModel.description = newDescription

        // Assert
        XCTAssertEqual(viewModel.description, newDescription, "The description should reflect the new value after being updated.")
    }

    func test_updateExampleSteps_shouldReflectNewValue() {
        // Arrange
        let newExampleSteps = [
            "1. Nova lista ordenada: [1, 3, 5, 7, 9]",
            "2. Procurando o número 5...",
            "3. Encontrado!"
        ]

        // Act
        viewModel.exampleSteps = newExampleSteps

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, newExampleSteps, "The example steps should reflect the new value after being updated.")
    }
}
