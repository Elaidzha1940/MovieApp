//  /*
//
//  Project: MovieApp
//  File: Model.swift
//  Created by: Elaidzha Shchukin
//  Date: 05.12.2023
//
//  */

import Foundation

struct Row: Identifiable {
    var id: Int
    var name: String
    var time: String
    var image: String
}

struct DataType: Identifiable {
    var id: Int
    var name: String
    var title: String
    var image: String
}

struct DateType: Identifiable {
    var id: Int
    var date: String
    var day: String
}

struct MovieType: Identifiable {
    var id: Int
    var row: [Row]
}

var datas = [
    MovieType(id: 0, row: [
        Row(id: 0, name: "Captian America", time: "1h 20m", image: "cap"),
        Row(id: 1, name: "Antman", time: "12h 10m", image: "ant"),
        Row(id: 2, name: "Captian Marvel", time: "1h 50m", image: "marvel")
    ]),
    MovieType(id: 1, row: [
        Row(id: 0, name: "Altron", time: "2h 13m", image: "altron"),
        Row(id: 1, name: "Avangers", time: "1h 45m", image: "avangers"),
        Row(id: 2, name: "Black Panther", time: "2h 43m", image: "blackp")
    ]),
    MovieType(id: 3, row: [
        Row(id: 0, name: "Black Window", time: "2h 13m", image: "blackwindow"),
        Row(id: 1, name: "Avangers Last Battle", time: "1h 45m", image: "avangerslast"),
        Row(id: 2, name: "Galaxy", time: "2h 43m", image: "galaxy")
    ])
]
