//
//  BigOViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 12/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class BigOViewModelTests: XCTestCase
{

    private var viewModel: BigOViewModel!

    override func setUp()
    {
        super.setUp()
        viewModel = BigOViewModel()
    }

    override func tearDown()
    {
        viewModel = nil
        super.tearDown()
    }

    func test_initialTitle_shouldBeEntendendoBigO()
    {
        // Assert
        XCTAssertEqual(viewModel.title, "Entendendo Big-O", "The initial title should be 'Entendendo Big-O'.")
    }

    func test_initialExampleText_shouldBeExemploDeComplexidade()
    {
        // Assert
        XCTAssertEqual(viewModel.exampleText, "Exemplo de Complexidade:", "The initial example text should be 'Exemplo de Complexidade:'.")
    }

    func test_initialDescription_shouldMatchExpectedText()
    {
        // Arrange
        let expectedDescription = """
            Big-O é uma notação matemática usada para descrever a eficiência de algoritmos, principalmente em termos de tempo de execução e uso de memória, à medida que o tamanho da entrada cresce.

            Principais Complexidades:
            - O(1): Tempo constante, independente do tamanho da entrada.
            - O(log n): Tempo logarítmico, comum em busca binária.
            - O(n): Tempo linear, onde cada elemento é processado uma vez.
            - O(n log n): Eficiência de algoritmos de ordenação eficientes, como Merge Sort.
            - O(n²): Tempo quadrático, típico de algoritmos ineficientes como Bubble Sort.
            """

        // Assert
        XCTAssertEqual(viewModel.description, expectedDescription, "The description does not match the expected text.")
    }

    func test_initialExampleSteps_shouldMatchExpectedArray()
    {
        // Arrange
        let expectedSteps = [
            "1. O(1): Acessar diretamente um índice em uma lista.",
            "2. O(log n): Dividir uma lista ordenada em partes (Busca Binária).",
            "3. O(n): Percorrer todos os elementos de uma lista.",
            "4. O(n log n): Ordenar uma lista usando Merge Sort.",
            "5. O(n²): Comparar todos os pares em uma lista (Bubble Sort)."
        ]

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, expectedSteps, "The example steps should match the expected array.")
    }

    func test_updateTitle_shouldReflectNewValue()
    {
        // Act
        viewModel.title = "Nova Complexidade Big-O"

        // Assert
        XCTAssertEqual(viewModel.title, "Nova Complexidade Big-O", "The title should reflect the new value after being updated.")
    }

    func test_updateDescription_shouldReflectNewValue()
    {
        // Arrange
        let newDescription = "Descrição atualizada sobre Big-O."

        // Act
        viewModel.description = newDescription

        // Assert
        XCTAssertEqual(viewModel.description, newDescription, "The description should reflect the new value after being updated.")
    }

    func test_updateExampleSteps_shouldReflectNewValue()
    {
        // Arrange
        let newExampleSteps = [
            "1. Novo exemplo: O(1) para acesso direto.",
            "2. Novo exemplo: O(n) para percorrer uma lista."
        ]

        // Act
        viewModel.exampleSteps = newExampleSteps

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, newExampleSteps, "The example steps should reflect the new value after being updated.")
    }
}
