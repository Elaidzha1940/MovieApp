//  /*
//
//  Project: MovieApp
//  File: SearchView.swift
//  Created by: Elaidzha Shchukin
//  Date: 05.12.2023
//
//  */

//

import SwiftUI

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

#Preview {
    SearchView()
}
