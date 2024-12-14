//
//  InsertionSortView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 08/12/24.
//

import SwiftUI

struct InsertionSortView: View
{
    @StateObject private var viewModel = InsertionSortViewModel()
    
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
    InsertionSortView()
        .preferredColorScheme(.dark)
}
