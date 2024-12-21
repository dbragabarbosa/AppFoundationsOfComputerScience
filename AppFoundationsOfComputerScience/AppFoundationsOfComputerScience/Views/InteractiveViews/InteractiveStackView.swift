//
//  InteractiveStackView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 21/12/24.
//

import SwiftUI

struct InteractiveStackView: View
{
    @StateObject private var viewModel = InteractiveStackViewModel()
    @Environment(\.dismiss) private var dismiss
    
    var body: some View
    {
        VStack(spacing: 20)
        {
            Text("Interaja com a Pilha")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 20)
            
            Spacer()
            
            VStack(spacing: 10)
            {
                if viewModel.currentStack.isEmpty
                {
                    Text("A pilha está vazia.")
                        .font(.headline)
                        .foregroundColor(.gray)
                } else {
                    ScrollView
                    {
                        VStack(spacing: 10)
                        {
                            ForEach(viewModel.currentStack.reversed(), id: \.self)
                            { item in
                                Text(item)
                                    .font(.body)
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .frame(maxWidth: .infinity)
                                    .background(Color.orange.opacity(0.8))
                                    .cornerRadius(8)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .frame(maxHeight: 200)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(12)
            
            Spacer()
            
            VStack(spacing: 10)
            {
                HStack(spacing: 10)
                {
                    Button(action: {
                        viewModel.popFromStack()
                    }) {
                        Text("Pop")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 100)
                            .background(Color.red)
                            .cornerRadius(8)
                    }
                    
                    TextField("Digite um valor", text: $viewModel.userInput)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .background(Color.black.opacity(0.8))
                        .cornerRadius(12)
                        .frame(maxWidth: .infinity)
                    
                    Button(action: {
                        viewModel.pushToStack()
                    }) {
                        Text("Push")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 100)
                            .background(Color.green)
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
            .background(Color.black.opacity(0.9))
            .cornerRadius(12)
            
            Spacer()
            
            Button(action: {
                dismiss()
            }) {
                Text("Voltar")
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
    }
}

#Preview
{
    InteractiveStackView()
}
