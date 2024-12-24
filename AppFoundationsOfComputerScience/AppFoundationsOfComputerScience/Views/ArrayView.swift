//
//  ArrayView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 24/12/24.
//

import SwiftUI

struct ArrayView: View
{
    @StateObject private var viewModel = ArrayViewModel()
    
    var body: some View
    {
        GenericContentView(
            title: viewModel.title,
            description: viewModel.description,
            exampleText: viewModel.exampleText,
            exampleSteps: viewModel.exampleSteps
        )
    }
}

#Preview
{
    ArrayView()
        .preferredColorScheme(.dark)
}
