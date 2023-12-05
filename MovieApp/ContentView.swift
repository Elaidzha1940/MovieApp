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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

struct Head: View {
    @State private var showSheet = false
    
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                VStack(alignment: .leading, spacing: 15) {
                    Text("Marvel")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                    
                    Button(action: {
                        // Добавьте код для действия кнопки
                    }, label: {
                        HStack(spacing: 10) {
                            Text("Marvel Studios Movies")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                            
                            Image(systemName: "chevron.down")
                                .bold()
                        }
                    })
                    .foregroundColor(.white)
                }
                
                Spacer()
                
                Button(action: {
                    // Добавьте код для действия кнопки
                }, label: {
                    Image(systemName: "line.3.horizontal.circle")
                        .renderingMode(.original)
                        .foregroundColor(.white)
                })
            }
            .padding(.top, 15)
            
            // HStack {
            SearchView()
                .padding(.vertical, 10)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 15) {
                    ForEach(datas) { i in
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                ForEach(i.row) { j in
                                    VStack(alignment: .leading, spacing: 10) {
                                        Image(j.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 120, height: 180)
                                            .cornerRadius(10)
                                            .onTapGesture {
                                                self.showSheet.toggle()
                                            }
                                        Text(j.name)
                                            .font(.system(size: 18, weight: .medium, design: .rounded))
                                            .lineLimit(1)
                                        Text(j.title)
                                            .font(.system(size: 18, weight: .medium, design: .rounded))
                                    }
                                    .foregroundColor(.black.opacity(0.4))
                                    .frame(width: 140)
                                }
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 15)
        .sheet(isPresented: $showSheet) {
            Details()
        }
    }
}
