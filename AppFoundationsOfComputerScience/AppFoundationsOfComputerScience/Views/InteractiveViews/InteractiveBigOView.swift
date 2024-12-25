//
//  InteractiveBigOView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 25/12/24.
//

import SwiftUI

struct InteractiveBigOView: View
{
    @StateObject private var viewModel = InteractiveBigOViewModel()
    @Environment(\.dismiss) private var dismiss
    
    var body: some View
    {
        ScrollView
        {
            VStack(spacing: 16)
            {
                Text("Simulação de Complexidade Big O")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 8)
                {
                    TextField("Tamanho da entrada", text: $viewModel.inputSize)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .foregroundColor(Color.white) // Ajusta a cor do texto
                        .cornerRadius(12)
                        .keyboardType(.numberPad)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.blue, lineWidth: 1)
                        )
                        .padding(.horizontal, 20)
                    
                    Text("Insira o tamanho da entrada para simular o tempo de execução.")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 20)
                }
                
                VStack(alignment: .leading, spacing: 16)
                {
                    Text("Escolha um algoritmo:")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                    
                    VStack(alignment: .leading, spacing: 8)
                    {
                        ForEach(viewModel.algorithms, id: \.name)
                        { algorithm in
                            Button(action: {
                                viewModel.selectedAlgorithm = algorithm
                            }) {
                                HStack
                                {
                                    Text(algorithm.name)
                                        .font(.body)
                                        .foregroundColor(.white)
                                        .padding(.leading, 10)
                                    
                                    Spacer()
                                }
                                .frame(height: 40)
                                .background(viewModel.selectedAlgorithm?.name == algorithm.name ? Color.blue : Color.gray)
                                .cornerRadius(12)
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                }
                
                Button(action: viewModel.simulate)
                {
                    Text("Simular")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(12)
                }
                .padding(.horizontal, 20)
                
                if !viewModel.result.isEmpty
                {
                    VStack(alignment: .leading, spacing: 10)
                    {
                        Text("Resultado:")
                            .font(.headline)
                            .foregroundColor(.white)
                        Text(viewModel.result)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(12)
                        
                        Text("O tempo simulado é calculado assumindo que o computador pode realizar \(viewModel.operationsPerSecond) operações por segundo. Cada algoritmo tem um número teórico de operações baseado na sua complexidade Big O.")
                            .font(.footnote)
                            .foregroundColor(.gray)
                            .padding(.top, 10)
                    }
                    .padding(.horizontal, 20)
                }
                
                Spacer()
                
                Button(action: { dismiss() })
                {
                    Text("Voltar")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            }
        }
        .padding()
        .background(Color.black.ignoresSafeArea())
    }
}
