//
//  ContentListViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 12/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class ContentListViewModelTests: XCTestCase
{
    private var viewModel: ContentListViewModel!

    override func setUp()
    {
        super.setUp()
        viewModel = ContentListViewModel()
    }

    override func tearDown()
    {
        viewModel = nil
        super.tearDown()
    }

    func test_initialTitle_shouldBeCorrect()
    {
        // Assert
        XCTAssertEqual(viewModel.title, "Conteúdos disponíveis", "The initial title should be 'Conteúdos disponíveis'.")
    }

    func test_initialTitles_shouldContainCorrectContent()
    {
        // Arrange
        let expectedTitles = ["Pilhas", "Filas", "Árvores", "Busca linear", "Busca binária",
                              "Big O", "SelectionSort", "InsertionSort", "BubbleSort", "QuickSort", "MergeSort"]

        // Assert
        XCTAssertEqual(viewModel.titles, expectedTitles, "The initial titles should match the predefined list.")
    }

    func test_updateTitle_shouldReflectNewValue()
    {
        // Act
        viewModel.title = "Novo Título"

        // Assert
        XCTAssertEqual(viewModel.title, "Novo Título", "The title should reflect the new value after being updated.")
    }

    func test_updateTitles_shouldReflectNewValues()
    {
        // Arrange
        let newTitles = ["Grafos", "Hash Tables", "Heap Sort"]

        // Act
        viewModel.titles = newTitles

        // Assert
        XCTAssertEqual(viewModel.titles, newTitles, "The titles should reflect the new list after being updated.")
    }

    func test_addNewContentTitle_shouldAppendToTitles()
    {
        // Arrange
        let newContent = "Grafos"
        let expectedTitles = viewModel.titles + [newContent]

        // Act
        viewModel.titles.append(newContent)

        // Assert
        XCTAssertEqual(viewModel.titles, expectedTitles, "Adding a new content title should append it to the titles list.")
    }

    func test_removeContentTitle_shouldUpdateTitles()
    {
        // Arrange
        let contentToRemove = "Filas"
        let expectedTitles = viewModel.titles.filter { $0 != contentToRemove }

        // Act
        viewModel.titles.removeAll { $0 == contentToRemove }

        // Assert
        XCTAssertEqual(viewModel.titles, expectedTitles, "Removing a content title should update the titles list correctly.")
    }

    func test_clearTitles_shouldResultInEmptyList()
    {
        // Act
        viewModel.titles.removeAll()

        // Assert
        XCTAssertTrue(viewModel.titles.isEmpty, "Removing all titles should result in an empty list.")
    }
}
