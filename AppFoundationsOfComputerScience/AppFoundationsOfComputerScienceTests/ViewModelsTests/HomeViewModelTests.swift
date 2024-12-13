//
//  HomeViewModelTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 12/12/24.
//

import XCTest
@testable import AppFoundationsOfComputerScience

final class HomeViewModelTests: XCTestCase
{

    private var viewModel: HomeViewModel!

    override func setUp()
    {
        super.setUp()
        viewModel = HomeViewModel()
    }

    override func tearDown()
    {
        viewModel = nil
        super.tearDown()
    }

    func test_initialTitle_shouldBeEmpty()
    {
        // Assert
        XCTAssertEqual(viewModel.title, "", "The initial title should be an empty string.")
    }

    func test_initialSubtitle_shouldBeEmpty()
    {
        // Assert
        XCTAssertEqual(viewModel.subtitle, "", "The initial subtitle should be an empty string.")
    }

    func test_initialButtonText_shouldBeEmpty()
    {
        // Assert
        XCTAssertEqual(viewModel.buttonText, "", "The initial button text should be an empty string.")
    }

    func test_welcome_shouldSetCorrectValues()
    {
        // Act
        viewModel.welcome()

        // Assert
        XCTAssertEqual(viewModel.title, "Bem vindo", "The title should be 'Bem vindo' after calling welcome().")
        XCTAssertEqual(viewModel.subtitle, "Explore, aprenda e interaja com os nossos conteúdos!", "The subtitle should be 'Explore, aprenda e interaja com os nossos conteúdos!' after calling welcome().")
        XCTAssertEqual(viewModel.buttonText, "Conteúdos disponíveis", "The button text should be 'Conteúdos disponíveis' after calling welcome().")
    }

    func test_updateTitle_shouldReflectNewValue()
    {
        // Act
        viewModel.title = "Nova Página Inicial"

        // Assert
        XCTAssertEqual(viewModel.title, "Nova Página Inicial", "The title should reflect the new value after being updated.")
    }

    func test_updateSubtitle_shouldReflectNewValue()
    {
        // Act
        viewModel.subtitle = "Nova descrição inicial."

        // Assert
        XCTAssertEqual(viewModel.subtitle, "Nova descrição inicial.", "The subtitle should reflect the new value after being updated.")
    }

    func test_updateButtonText_shouldReflectNewValue()
    {
        // Act
        viewModel.buttonText = "Ver opções"

        // Assert
        XCTAssertEqual(viewModel.buttonText, "Ver opções", "The button text should reflect the new value after being updated.")
    }

    func test_welcome_afterUpdatingProperties_shouldOverrideValues()
    {
        // Arrange
        viewModel.title = "Título personalizado"
        viewModel.subtitle = "Subtítulo personalizado"
        viewModel.buttonText = "Botão personalizado"

        // Act
        viewModel.welcome()

        // Assert
        XCTAssertEqual(viewModel.title, "Bem vindo", "Calling welcome() should override the title with 'Bem vindo'.")
        XCTAssertEqual(viewModel.subtitle, "Explore, aprenda e interaja com os nossos conteúdos!", "Calling welcome() should override the subtitle with the default value.")
        XCTAssertEqual(viewModel.buttonText, "Conteúdos disponíveis", "Calling welcome() should override the button text with the default value.")
    }
}
