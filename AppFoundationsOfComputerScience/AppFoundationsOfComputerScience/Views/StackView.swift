//
//  StackView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 08/12/24.
//

import SwiftUI

struct StackView: View
{
    @StateObject private var viewModel = StackViewModel()
    
    var body: some View
    {
        GenericContentView(
            title: viewModel.title,
            description: viewModel.description,
            exampleText: viewModel.exampleText,
            exampleSteps: viewModel.exampleStack
        )
    }
}

#Preview
{
    StackView()
        .preferredColorScheme(.dark)
}
