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
        }
        .padding()
    }
}
