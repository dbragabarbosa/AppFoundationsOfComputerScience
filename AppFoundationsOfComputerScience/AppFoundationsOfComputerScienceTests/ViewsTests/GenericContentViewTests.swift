//
//  GenericContentViewTests.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 14/12/24.
//

import XCTest
import SwiftUI
@testable import AppFoundationsOfComputerScience

final class GenericContentViewTests: XCTestCase
{
    func test_genericContentView_shouldRenderCorrectly()
    {
        // Arrange
        let title = "Teste Título"
        let description = "Teste Descrição"
        let exampleText = "Teste Exemplo"
        let exampleSteps = ["Passo 1", "Passo 2", "Passo 3"]
        
        // Act
        let view = GenericContentView(
            title: title,
            description: description,
            exampleText: exampleText,
            exampleSteps: exampleSteps
        )
        
        // Assert
        XCTAssertNoThrow(view.body, "The GenericContentView should render without errors.")
    }
}
