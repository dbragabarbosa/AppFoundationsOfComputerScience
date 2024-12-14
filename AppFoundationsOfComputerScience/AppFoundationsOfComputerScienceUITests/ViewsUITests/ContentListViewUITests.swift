//
//  ContentListViewUITests.swift
//  AppFoundationsOfComputerScienceUITests
//
//  Created by Daniel Braga Barbosa on 14/12/24.
//

import XCTest

final class ContentListViewUITests: XCTestCase
{
    
    private var app: XCUIApplication!
    
    override func setUpWithError() throws
    {
        app = XCUIApplication()
        app.launch()
        
        continueAfterFailure = false
        
        app.buttons["Conteúdos disponíveis"].tap()
    }
    
    func testContentListViewDisplaysCorrectElements() throws
    {
        XCTAssertTrue(app.staticTexts["Conteúdos disponíveis"].exists, "O título da ContentListView não está sendo exibido.")
        
        let expectedTitles = [
            "Pilhas", "Filas", "Árvores", "Busca linear", "Busca binária",
            "Big O", "SelectionSort", "InsertionSort", "BubbleSort", "QuickSort", "MergeSort"
        ]
        
        for title in expectedTitles
        {
            XCTAssertTrue(app.staticTexts[title].exists, "O título '\(title)' não está sendo exibido na ContentListView.")
        }
    }
}
