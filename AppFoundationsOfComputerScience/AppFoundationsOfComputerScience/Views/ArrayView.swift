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
                Text("Interaja com o Array")
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
            InteractiveArrayView()
        }
    }
}

#Preview
{
    ArrayView()
        .preferredColorScheme(.dark)
}
