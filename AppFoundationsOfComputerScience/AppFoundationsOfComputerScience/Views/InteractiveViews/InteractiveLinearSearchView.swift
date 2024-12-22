//
//  InteractiveLinearSearchView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 22/12/24.
//

import SwiftUI

struct InteractiveLinearSearchView: View
{
    @StateObject private var viewModel = InteractiveLinearSearchViewModel()
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text("Simulação: Busca Linear")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)

            Spacer()

            HStack(spacing: 10) {
                ForEach(viewModel.list.indices, id: \.self) { index in
                    Text("\(viewModel.list[index])")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 50, height: 50)
                        .background(viewModel.getBackgroundColor(for: index))
                        .cornerRadius(8)
                        .offset(y: viewModel.getOffset(for: index))
                        .animation(.easeInOut, value: viewModel.currentIndex)
                }
            }
            .padding()

            if let statusMessage = viewModel.statusMessage {
                Text(statusMessage)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
            }

            Spacer()

            HStack(spacing: 10) {
                TextField("Número para buscar", text: $viewModel.targetInput)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(12)

                Button(action: viewModel.startSearch) {
                    Text("Buscar")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
            .padding()

            Button(action: { dismiss() }) {
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
    }
}







#Preview
{
    InteractiveLinearSearchView()
}
