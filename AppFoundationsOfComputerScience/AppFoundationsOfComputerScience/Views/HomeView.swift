//
//  HomeView.swift
//  AppFoundationsOfComputerScience
//
//  Created by Daniel Braga Barbosa on 24/11/24.
//

import SwiftUI

struct HomeView: View
{
    @StateObject private var viewModel = HomeViewModel()
    
    @State private var gradientStart = Color.blue.opacity(0.8)
    @State private var gradientEnd = Color.black
    
    var body: some View
    {
        NavigationView
        {
            ZStack
            {
                LinearGradient(
                    gradient: Gradient(colors: [gradientStart, gradientEnd]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                .onAppear
                {
                    withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true))
                    {
                        gradientStart = Color.black
                        gradientEnd = Color.blue.opacity(0.8)
                    }
                }
                
                VStack(spacing: 20)
                {
                    
                    Spacer()

                    Image(systemName: "globe")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 10, x: 0, y: 5)
                    
                    Text(viewModel.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 5, x: 0, y: 2)
                    
                    Text(viewModel.subtitle)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    NavigationLink(destination: ContentListView())
                    {
                        Text(viewModel.buttonText)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(12)
                            .shadow(color: .blue.opacity(0.5), radius: 10, x: 0, y: 5)
                            .padding(.horizontal, 20)
                    }

                }
                .padding()
                .onAppear()
                {
                    viewModel.welcome()
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

#Preview
{
    HomeView()
        .preferredColorScheme(.dark)
}
