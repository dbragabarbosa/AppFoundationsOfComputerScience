//
//  InsertionSortViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 12/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class InsertionSortViewModelTests: XCTestCase
{

    private var viewModel: InsertionSortViewModel!

    override func setUp()
    {
        super.setUp()
        viewModel = InsertionSortViewModel()
    }

    override func tearDown()
    {
        viewModel = nil
        super.tearDown()
    }

    func test_initialTitle_shouldBeEntendendoInsertionSort()
    {
        // Assert
        XCTAssertEqual(viewModel.title, "Entendendo Insertion Sort", "The initial title should be 'Entendendo Insertion Sort'.")
    }

    func test_initialExampleText_shouldBeExemploDeOrdenacaoComInsertionSort()
    {
        // Assert
        XCTAssertEqual(viewModel.exampleText, "Exemplo de Ordenação com Insertion Sort:", "The initial example text should be 'Exemplo de Ordenação com Insertion Sort:'.")
    }

    func test_initialDescription_shouldMatchExpectedText()
    {
        // Arrange
        let expectedDescription = """
            O Insertion Sort é um algoritmo de ordenação que constrói a lista ordenada um elemento de cada vez, comparando cada elemento com os elementos já ordenados e os inserindo na posição correta.
            
            Características:
            - Complexidade de tempo: Melhor caso O(n), Pior caso O(n²).
            - Eficiente para listas pequenas ou quase ordenadas.
            - Ordenação estável, preserva a ordem relativa dos elementos iguais.
            """

        // Assert
        XCTAssertEqual(viewModel.description, expectedDescription, "The description does not match the expected text.")
    }

    func test_initialExampleSteps_shouldMatchExpectedArray()
    {
        // Arrange
        let expectedSteps = [
            "Lista inicial: [8, 4, 2, 6]",
            "1. Compare o segundo elemento (4) com o primeiro (8) e insira antes.",
            "   Lista atual: [4, 8, 2, 6]",
            "2. Compare o terceiro elemento (2) com os anteriores e insira antes do 4.",
            "   Lista atual: [2, 4, 8, 6]",
            "3. Compare o último elemento (6) com os anteriores e insira após o 4.",
            "   Lista ordenada: [2, 4, 6, 8]"
        ]

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, expectedSteps, "The example steps should match the expected array.")
    }

    func test_updateTitle_shouldReflectNewValue()
    {
        // Act
        viewModel.title = "Nova explicação sobre Insertion Sort"

        // Assert
        XCTAssertEqual(viewModel.title, "Nova explicação sobre Insertion Sort", "The title should reflect the new value after being updated.")
    }

    func test_updateDescription_shouldReflectNewValue()
    {
        // Arrange
        let newDescription = "Descrição atualizada para Insertion Sort."

        // Act
        viewModel.description = newDescription

        // Assert
        XCTAssertEqual(viewModel.description, newDescription, "The description should reflect the new value after being updated.")
    }

    func test_updateExampleSteps_shouldReflectNewValue()
    {
        // Arrange
        let newExampleSteps = [
            "Lista inicial: [5, 3, 7, 1]",
            "1. Compare o segundo elemento (3) com o primeiro (5) e insira antes.",
            "   Lista atual: [3, 5, 7, 1]",
            "2. Continue ordenando até obter a lista final: [1, 3, 5, 7]"
        ]

        // Act
        viewModel.exampleSteps = newExampleSteps

        // Assert
        XCTAssertEqual(viewModel.exampleSteps, newExampleSteps, "The example steps should reflect the new value after being updated.")
    }
}
