//
//  TreeView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 08/12/24.
//

import SwiftUI

struct TreeView: View
{
    @StateObject private var viewModel = TreeViewModel()
    
    var body: some View
    {
        GenericContentView(
            title: viewModel.title,
            description: viewModel.description,
            exampleText: viewModel.exampleText,
            exampleSteps: viewModel.exampleTree
        )
    }
}

#Preview
{
    TreeView()
        .preferredColorScheme(.dark)
}
