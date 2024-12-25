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
    
    @State private var showInteractiveView = false
    
    var body: some View
    {
        VStack(spacing: 20)
        {
            GenericContentView(
                title: viewModel.title,
                description: viewModel.description,
                exampleText: viewModel.exampleText,
                exampleSteps: viewModel.exampleSteps
            )
            
            Button(action: {
                showInteractiveView = true
            }) {
                Text("Interaja com o InsertionSort")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(12)
            }
            .padding(.horizontal, 20)
        }
        .padding()
        .background(Color.black.ignoresSafeArea())
        .fullScreenCover(isPresented: $showInteractiveView)
        {
            InteractiveInsertionSortView()
        }
    }
}

#Preview
{
    InsertionSortView()
        .preferredColorScheme(.dark)
}
