//
//  InsertionSortView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 08/12/24.
//

import SwiftUI

struct InsertionSortView: View
{
    @StateObject private var viewModel = InsertionSortViewModel()
    
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
                
                ScrollView
                {
                    VStack(alignment: .leading, spacing: 15)
                    {
                        Text(viewModel.description)
                            .font(.body)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 10)
                        
                        Divider()
                            .background(Color.gray)
                        
                        Text(viewModel.exampleText)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 5)
                        
                        VStack(spacing: 10)
                        {
                            ForEach(viewModel.exampleSteps, id: \.self) { step in
                                HStack
                                {
                                    Image(systemName: "arrowtriangle.right.fill")
                                        .foregroundColor(.green)
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
    InsertionSortView()
        .preferredColorScheme(.dark)
}
