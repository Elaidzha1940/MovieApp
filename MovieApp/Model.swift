//  /*
//
//  Project: MovieApp
//  File: Model.swift
//  Created by: Elaidzha Shchukin
//  Date: 05.12.2023
//
//  */

import Foundation

struct type: Identifiable {
    
    var id: Int
    var row: [row]
}

struct datetype: Identifiable {
    
    var id: Int
    var name: String
    var title: String
    var image: String
}

struct datetype: Identifiable {
    
    var id: Int
    var date: String
    var day: String
}

var dates = [type(id: 0, row: [
    type(id: 0, name: "Captian America", time: "1h 20m", image: "cap"),
    type(id: 0, name: "Captian America", time: "1h 20m", image: "cap"),
    type(id: 0, name: "Captian America", time: "1h 20m", image: "cap"),
    
    )]
