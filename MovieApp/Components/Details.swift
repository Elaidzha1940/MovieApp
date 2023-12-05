//  /*
//
//  Project: MovieApp
//  File: Details.swift
//  Created by: Elaidzha Shchukin
//  Date: 05.12.2023
//
//  */

import SwiftUI

struct Details: View {
    @State var selected = ""
    
    var body: some View {
        VStack {
            Image(systemName: "")
                .resizable()
                .aspectRatio(1, contentMode: .fill)
                .frame(height: 350)
            
            VStack {
                VStack(spacing: 15) {
                    Text("Captian")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundStyle(.black)
                    
                    HStack(spacing: 15) {
                        HStack {
                            Image(systemName: "star.fill")
                                .bold()
                            Text("4.0")
                                .font(.system(size: 15, weight: .medium, design: .rounded))
                        }
                        
                        HStack {
                            Image(systemName: "clock")
                                .bold()
                            Text("120 min")
                                .font(.system(size: 15, weight: .medium, design: .rounded))
                        }
                        
                        HStack {
                            Image(systemName: "film")
                                .bold()
                            Text("IMAX")
                                .font(.system(size: 15, weight: .medium, design: .rounded))
                        }
                    }
                    
                    Divider()
                        .padding(.vertical, 15)
                    // description
                    Text("")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                    
                }
                .padding()
                .background(Color.gray.opacity(0.3))
                .background(Color.black.opacity(0.5))
                .cornerRadius(20)
                
                HStack(spacing: 10) {
                    ForEach(dates) { i in
                        Button(action: {
                            self.selected = i.date
                        }, label: {
                            VStack(spacing: 10) {
                                Text(i.day)
                                Text(i.date)
                            }
                            .padding()
                        })
                        .foregroundColor(self.selected == i.date ? Color.white : Color.gray)
                        .background(self.selected == i.date ? Color.blue : Color.clear)
                        .cornerRadius(10)
                    }
                }
                .padding(.vertical, 25)
                
                HStack(spacing: 15) {
                    Text("$25")
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Book Now")
                            .padding(.vertical, 15)
                            .padding(.horizontal, 15)
                    })
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                }
                .padding(.top, 15)
                
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, -30)
        }
    }
}

#Preview {
    Details()
}
