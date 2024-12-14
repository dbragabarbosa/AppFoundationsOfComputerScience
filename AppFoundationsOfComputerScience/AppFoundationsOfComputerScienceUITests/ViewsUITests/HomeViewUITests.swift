//
//  HomeViewUITests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 14/12/24.
//

import XCTest

final class HomeViewUITests: XCTestCase
{

    private var app: XCUIApplication!

    override func setUpWithError() throws
    {
        app = XCUIApplication()
        app.launch()
        
        continueAfterFailure = false
    }

    func testHomeViewDisplaysCorrectElements() throws
    {
        XCTAssertTrue(app.images["globe"].exists, "O ícone principal não está sendo exibido.")
        XCTAssertTrue(app.staticTexts["Bem vindo"].exists, "O título de boas-vindas não está sendo exibido.")
        XCTAssertTrue(app.staticTexts["Explore, aprenda e interaja com os nossos conteúdos!"].exists, "O subtítulo não está sendo exibido.")
        XCTAssertTrue(app.buttons["Conteúdos disponíveis"].exists, "O botão de navegação não está sendo exibido.")
    }

    func testNavigationToContentListView() throws
    {
        let navigationButton = app.buttons["Conteúdos disponíveis"]
        XCTAssertTrue(navigationButton.exists, "O botão de navegação não foi encontrado.")
        
        navigationButton.tap()
        
        let contentListViewTitle = app.staticTexts["Conteúdos disponíveis"]
        XCTAssertTrue(contentListViewTitle.waitForExistence(timeout: 2), "A navegação para ContentListView falhou.")
    }
}

