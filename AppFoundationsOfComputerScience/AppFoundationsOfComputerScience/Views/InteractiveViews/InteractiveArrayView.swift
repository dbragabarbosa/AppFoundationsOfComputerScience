//
//  InteractiveArrayView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 24/12/24.
//

import SwiftUI

struct InteractiveArrayView: View
{
    @StateObject private var viewModel = InteractiveArrayViewModel()
    @State private var arraySizeInput: String = ""
    @State private var addIndexInput: String = ""
    @State private var addValueInput: String = ""
    @State private var removeIndexInput: String = ""
    @State private var errorMessage: String? = nil
    @Environment(\.dismiss) private var dismiss

    var body: some View
    {
        VStack(spacing: 20)
        {
            HeaderView(title: "Interaja com Arrays")

            Spacer()

            if !viewModel.isArrayConfigured
            {
                ArrayConfigurationView(
                    arraySizeInput: $arraySizeInput,
                    configureArray: {
                        if let size = Int(arraySizeInput), size > 0
                        {
                            viewModel.configureArray(size: size)
                        }
                    }
                )
            } else {
                ArrayDisplayView(currentArray: viewModel.currentArray)

                ArrayInteractionView(
                    addIndexInput: $addIndexInput,
                    addValueInput: $addValueInput,
                    removeIndexInput: $removeIndexInput,
                    errorMessage: $errorMessage,
                    addAction: { index, value in
                        if viewModel.addToIndex(index: index, value: value)
                        {
                            errorMessage = nil
                        } else {
                            errorMessage = "Índice \(index) não está no array."
                        }
                    },
                    removeAction: { index in
                        if viewModel.removeFromIndex(index: index)
                        {
                            errorMessage = nil
                        } else {
                            errorMessage = "Índice \(index) não está no array."
                        }
                    }
                )

                if let errorMessage = errorMessage
                {
                    ErrorMessageView(message: errorMessage)
                }
            }

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

struct HeaderView: View
{
    let title: String

    var body: some View
    {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(.top, 20)
    }
}

struct ArrayConfigurationView: View
{
    @Binding var arraySizeInput: String
    let configureArray: () -> Void

    var body: some View
    {
        VStack(spacing: 16)
        {
            Text("Configurar Array")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.top, 20)

            TextField("Digite o tamanho do array", text: $arraySizeInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .background(Color.white.opacity(0.1))
                .cornerRadius(12)
                .keyboardType(.numberPad)
                .foregroundColor(.white)
                .accentColor(.blue)

            Button(action: configureArray)
            {
                Text("Configurar Array")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(12)
                    .shadow(color: .blue.opacity(0.4), radius: 4, x: 0, y: 2)
            }
        }
        .padding(20)
        .background(Color.black.opacity(0.8))
        .cornerRadius(16)
        .shadow(color: .gray.opacity(0.4), radius: 8, x: 0, y: 4)
        .padding(.horizontal, 20)
    }
}

struct ArrayDisplayView: View
{
    let currentArray: [String?]

    var body: some View
    {
        ScrollView
        {
            VStack(spacing: 10)
            {
                ForEach(Array(currentArray.enumerated()), id: \.0)
                { index, value in
                    HStack
                    {
                        Text("Índice \(index):")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 100, alignment: .leading)

                        Text(value ?? "vazio")
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(value == nil ? Color.gray.opacity(0.8) : Color.orange.opacity(0.8))
                            .cornerRadius(8)
                    }
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: 200)
    }
}

struct ArrayInteractionView: View
{
    @Binding var addIndexInput: String
    @Binding var addValueInput: String
    @Binding var removeIndexInput: String
    @Binding var errorMessage: String?
    let addAction: (Int, String) -> Void
    let removeAction: (Int) -> Void

    var body: some View
    {
        VStack(spacing: 10)
        {
            HStack(spacing: 10)
            {
                TextField("Índice", text: $removeIndexInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(5)
                    .background(Color.black.opacity(0.8))
                    .cornerRadius(8)
                    .keyboardType(.numberPad)

                Button(action: {
                    if let index = Int(removeIndexInput)
                    {
                        removeAction(index)
                    }
                    removeIndexInput = ""
                }) {
                    Text("Remover")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(5)
                        .frame(width: 100)
                        .background(Color.red)
                        .cornerRadius(8)
                }
            }

            HStack(spacing: 10)
            {
                TextField("Índice", text: $addIndexInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(5)
                    .background(Color.black.opacity(0.8))
                    .cornerRadius(8)
                    .keyboardType(.numberPad)

                TextField("Novo valor", text: $addValueInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(5)
                    .background(Color.black.opacity(0.8))
                    .cornerRadius(8)

                Button(action: {
                    if let index = Int(addIndexInput), !addValueInput.isEmpty
                    {
                        addAction(index, addValueInput)
                    }
                    addIndexInput = ""
                    addValueInput = ""
                }) {
                    Text("Adicionar")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(5)
                        .frame(width: 100)
                        .background(Color.green)
                        .cornerRadius(8)
                }
            }
        }
        .padding()
        .background(Color.black.opacity(0.9))
        .cornerRadius(12)
    }
}

struct ErrorMessageView: View
{
    let message: String

    var body: some View
    {
        Text(message)
            .font(.body)
            .foregroundColor(.red)
            .padding(.top, 10)
    }
}

#Preview
{
    InteractiveArrayView()
        .preferredColorScheme(.dark)
}
