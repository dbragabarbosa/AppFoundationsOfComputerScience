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
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.blue]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(spacing: 16)
            {
                Text(viewModel.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                Spacer(minLength: 20)
                
                ForEach(viewModel.titles, id: \.self)
                { title in
                    NavigationLink(destination: destinationView(for: title))
                    {
                        HStack
                        {
                            Image(systemName: "doc.text.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .foregroundColor(.white.opacity(0.8))
                            
                            Text(title)
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .padding(.leading, 8)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white.opacity(0.6))
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.white.opacity(0.1))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.white.opacity(0.2), lineWidth: 1)
                        )
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 30)
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    private func destinationView(for title: String) -> some View
    {
        switch title
        {
        case "Pilhas":
            return AnyView(StackView())
        case "Filas":
            return AnyView(QueueView())
        case "Árvores":
            return AnyView(TreeView())
        case "Arrays":
            return AnyView(ArrayView())
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
