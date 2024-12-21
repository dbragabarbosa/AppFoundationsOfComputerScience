//
//  InteractiveQueueView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 21/12/24.
//

import SwiftUI

struct InteractiveQueueView: View
{
    @StateObject private var viewModel = InteractiveQueueViewModel()
    @Environment(\.dismiss) private var dismiss
    
    var body: some View
    {
        VStack(spacing: 20)
        {
            Text("Interaja com a Fila")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 20)
            
            Spacer()
            
            VStack(spacing: 10)
            {
                if viewModel.elements.isEmpty
                {
                    Text("A fila está vazia.")
                        .font(.headline)
                        .foregroundColor(.gray)
                } else {
                    ScrollView
                    {
                        VStack(spacing: 10)
                        {
                            ForEach(viewModel.elements, id: \.self)
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
                        viewModel.dequeue()
                    }) {
                        Text("Dequeue")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 120)
                            .background(Color.red)
                            .cornerRadius(8)
                    }
                    
                    TextField(" ", text: $viewModel.newItem)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .background(Color.black.opacity(0.8))
                        .cornerRadius(12)
                        .frame(maxWidth: .infinity)
                    
                    Button(action: {
                        viewModel.enqueue()
                    }) {
                        Text("Enqueue")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 120)
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
    InteractiveQueueView()
}
