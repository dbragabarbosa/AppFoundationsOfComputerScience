//
//  GenericContentView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 13/12/24.
//

import SwiftUI

import SwiftUI

struct GenericContentView: View
{
    let title: String
    let description: String
    let exampleText: String
    let exampleSteps: [String]
    
    var body: some View
    {
        ZStack
        {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 20)
            {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                
                ScrollView
                {
                    VStack(alignment: .leading, spacing: 15)
                    {
                        Text(description)
                            .font(.body)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 10)
                        
                        Divider()
                            .background(Color.gray)
                        
                        Text(exampleText)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 5)
                        
                        VStack(spacing: 10)
                        {
                            ForEach(exampleSteps, id: \.self) { step in
                                HStack
                                {
                                    Image(systemName: "arrowtriangle.right.fill")
                                        .foregroundColor(.orange)
                                    Text(step)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                            }
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(12)
                    }
                    .padding(.horizontal, 20)
                }
                .padding(.vertical, 10)
                
                Spacer()
            }
        }
        .navigationTitle(" ")
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview
{
    GenericContentView(title: "Título exemplo",
                       description: "Descrição exemplo",
                       exampleText: "Texto de exemplo",
                       exampleSteps: ["Step 1", "Step 2"])
}
