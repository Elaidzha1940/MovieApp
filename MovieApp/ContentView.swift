//  /*
//
//  Project: MovieApp
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 04.12.2023
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Head()
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}

struct Head: View {
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                VStack(alignment: .leading, spacing: 15) {
                    Text("Marvel")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                    
                    Button(action: {
                        
                    }, label: {
                        HStack(spacing: 10) {
                            Text("Mavel Studios Movies")
                                .font(.system(size: 18, weight: .bold, design: .rounded))

                            Image(systemName: "chevron.down")
                                .bold()
                        }
                    })
                    .foregroundColor(.white)
                }
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "line.3.horizontal.circle")
                        .renderingMode(.original)
                        .foregroundColor(.white)
                })
            }
            
            HStack {
                SearchView()
                    .padding(.vertical, 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 15) {
                        
                    }
                }
            }
        }
        .padding()
    }
}

struct SearchView: View {
    @State var textField = ""
    
    var body: some View {
        
        HStack(spacing: 15) {
            Image(systemName: "magnifyingglass")
                .bold()
            
            TextField("Search movies...", text: $textField)
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(20)
    }
}
