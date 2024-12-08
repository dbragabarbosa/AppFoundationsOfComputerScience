//
//  ContentListView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 24/11/24.
//

import SwiftUI

struct ContentListView: View
{
    @StateObject private var viewModel = ContentListViewModel()
    
    var body: some View
    {
        ZStack
        {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 20)
            {
                Text(viewModel.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                Spacer()
                
                ForEach(viewModel.titles, id: \.self)
                { title in
                    NavigationLink(destination: destinationView(for: title))
                    {
                        HStack
                        {
                            Image(systemName: "doc.text")
                                .foregroundColor(.white)
                            
                            Text(title)
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                        }
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.9))
                        .cornerRadius(10)
                        .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 2)
                    }
                }
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 40)
        }
        .navigationTitle(viewModel.title)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func destinationView(for title: String) -> some View
    {
        switch title
        {
        case "Pilha":
            return AnyView(StackView())
        case "Filas":
            return AnyView(QueueView())
        case "Árvores":
            return AnyView(TreeView())
        case "Busca linear":
            return AnyView(LinearSearchView())
        case "Busca binária":
            return AnyView(BinarySearchView())
        case "Big O":
            return AnyView(BigOView())
        case "SelectionSort":
            return AnyView(SelectionSortView())
        case "InsertionSort":
            return AnyView(InsertionSortView())
        case "BubbleSort":
            return AnyView(BubbleSortView())
        case "QuickSort":
            return AnyView(QuickSortView())
        case "MergeSort":
            return AnyView(MergeSortView())
        default:
            return AnyView(Text("Conteúdo em construção").foregroundColor(.white))
        }
    }
}

#Preview
{
    ContentListView()
        .preferredColorScheme(.dark)
}
