//
//  ContentListViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 07/12/24.
//

import Foundation

class ContentListViewModel: ObservableObject
{
//    @Published var titles: [String] = [ "Pilhas", "Filas", "Árvores", "Busca linear", "Busca binária",
//                                        "Big O", "SelectionSort", "InsertionSort", "BubbleSort", "QuickSort", "MergeSort"]
    
    @Published var titles: [String] = [ "Pilhas", "Filas", "Arrays", "Busca linear", "Busca binária",
                                        "Big O", "SelectionSort", "InsertionSort", "BubbleSort"]
    
    @Published var title: String = "Conteúdos disponíveis"
}
