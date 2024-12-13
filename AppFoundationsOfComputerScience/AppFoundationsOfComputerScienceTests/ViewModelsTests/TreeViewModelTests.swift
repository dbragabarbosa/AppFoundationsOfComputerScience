//
//  TreeViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 12/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class TreeViewModelTests: XCTestCase {

    private var viewModel: TreeViewModel!

    override func setUp() {
        super.setUp()
        viewModel = TreeViewModel()
    }

    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }

    func test_initialTitle_shouldBeEntendendoArvores() {
        // Assert
        XCTAssertEqual(viewModel.title, "Entendendo Árvores", "The initial title should be 'Entendendo Árvores'.")
    }

    func test_initialExampleText_shouldBeExemplo() {
        // Assert
        XCTAssertEqual(viewModel.exampleText, "Exemplo:", "The initial example text should be 'Exemplo:'.")
    }

    func test_initialDescription_shouldMatchExpectedText() {
        // Arrange
        let expectedDescription = """
            Árvores são estruturas de dados hierárquicas formadas por nós, onde um nó principal (raiz) conecta-se a nós filhos. Cada nó pode ter zero ou mais filhos, e nós sem filhos são chamados de folhas.

            Principais conceitos:
            - Raiz: O nó principal da árvore.
            - Nó: Cada elemento da árvore.
            - Folhas: Nós sem filhos.
            - Altura: O comprimento do maior caminho da raiz até uma folha.
            """

        // Assert
        XCTAssertEqual(viewModel.description, expectedDescription, "The description does not match the expected text.")
    }

    func test_initialExampleTree_shouldMatchExpectedArray() {
        // Arrange
        let expectedTree = [
            "1. Raiz: 'A'",
            "2. Filhos da raiz: 'B', 'C'",
            "3. Filhos de 'B': 'D', 'E'",
            "4. Folha: 'D' (sem filhos)"
        ]

        // Assert
        XCTAssertEqual(viewModel.exampleTree, expectedTree, "The example tree should match the expected array.")
    }

    func test_updateTitle_shouldReflectNewValue() {
        // Act
        viewModel.title = "Nova Árvore"

        // Assert
        XCTAssertEqual(viewModel.title, "Nova Árvore", "The title should reflect the new value after being updated.")
    }

    func test_updateDescription_shouldReflectNewValue() {
        // Arrange
        let newDescription = "Uma nova descrição para árvores."

        // Act
        viewModel.description = newDescription

        // Assert
        XCTAssertEqual(viewModel.description, newDescription, "The description should reflect the new value after being updated.")
    }

    func test_updateExampleTree_shouldReflectNewValue() {
        // Arrange
        let newExampleTree = ["1. Raiz: 'X'", "2. Filhos: 'Y', 'Z'"]

        // Act
        viewModel.exampleTree = newExampleTree

        // Assert
        XCTAssertEqual(viewModel.exampleTree, newExampleTree, "The example tree should reflect the new value after being updated.")
    }
}
