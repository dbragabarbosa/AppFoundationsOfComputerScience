//
//  BubbleSortView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 08/12/24.
//

import SwiftUI

struct BubbleSortView: View
{
    @StateObject private var viewModel = BubbleSortViewModel()
    
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
    BubbleSortView()
        .preferredColorScheme(.dark)
}
