//
//  HomeViewModel.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 24/11/24.
//

import Foundation

class HomeViewModel: ObservableObject
{
    @Published var title: String = ""
    @Published var subtitle: String = ""
    @Published var buttonText: String = ""
    
    func welcome()
    {
        title = "Bem vindo"
        subtitle = "Explore, aprenda e interaja com os nossos conteúdos!"
        buttonText = "Conteúdos disponíveis"
    }
}
