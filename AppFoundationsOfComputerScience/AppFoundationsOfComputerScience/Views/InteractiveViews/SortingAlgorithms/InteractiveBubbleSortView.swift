//
//  InteractiveBubbleSortView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 23/12/24.
//

import SwiftUI

struct InteractiveBubbleSortView: View
{
    @StateObject private var viewModel = InteractiveBubbleSortViewModel()
    @Environment(\.dismiss) private var dismiss

    var body: some View
    {
        VStack(spacing: 20)
        {
            Text("Simulação: Bubble Sort")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)

            Spacer()

            HStack(spacing: 10)
            {
                ForEach(viewModel.list.indices, id: \.self)
                { index in
                    Text("\(viewModel.list[index])")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(viewModel.getBackgroundColor(for: index))
                        .cornerRadius(8)
                        .animation(.easeInOut, value: viewModel.currentIndex)
                }
            }
            .padding()

            if let statusMessage = viewModel.message
            {
                Text(statusMessage)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
            }

            Spacer()

            Button(action: viewModel.startSorting)
            {
                Text("Iniciar Ordenação")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }

            Button(action: { dismiss() })
            {
                Text("Voltar")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray)
                    .cornerRadius(12)
            }
            .padding(.horizontal, 20)
        }
        .padding()
        .background(Color.black.ignoresSafeArea())
        .onAppear {
            viewModel.setupList([29, 10, 14, 37, 13])
        }
    }
}

#Preview {
    InteractiveBubbleSortView()
}
