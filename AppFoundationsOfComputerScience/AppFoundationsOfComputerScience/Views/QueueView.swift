//
//  QueueView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 08/12/24.
//

import SwiftUI

struct QueueView: View
{
    @StateObject private var viewModel = QueueViewModel()
    
    var body: some View
    {
        GenericContentView(
            title: viewModel.title,
            description: viewModel.description,
            exampleText: viewModel.exampleText,
            exampleSteps: viewModel.exampleQueue
        )
    }
}

#Preview
{
    QueueView()
        .preferredColorScheme(.dark)
}
