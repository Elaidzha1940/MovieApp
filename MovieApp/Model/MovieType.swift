//  /*
//
//  Project: MovieApp
//  File: MovieType.swift
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
        Row(id: 2, name: "Captian Marvel", time: "1h 50m", image: "marvel"),
        Row(id: 3, name: "Guardians of the Galaxy", time: "1h 34m", image: "galaxy"),
        Row(id: 4, name: "Spider-Man: Far From Home", time: "2h 58m", image: "spider"),
        Row(id: 5, name: "Thor: Ragnarok", time: "1h 58m", image: "thor")
    ]),
    MovieType(id: 1, row: [
        Row(id: 0, name: "Altron", time: "2h 13m", image: "altron"),
        Row(id: 1, name: "Avangers", time: "1h 45m", image: "avangers"),
        Row(id: 2, name: "Black Panther", time: "2h 43m", image: "blackp"),
        Row(id: 3, name: "Captian America: Civil War", time: "3h 05m", image: "ironcap")
    ]),
    MovieType(id: 3, row: [
        Row(id: 0, name: "Black Window", time: "2h 13m", image: "blackwindow"),
        Row(id: 1, name: "Avangers Last Battle", time: "1h 45m", image: "avangerslast"),
        Row(id: 2, name: "Galaxy", time: "2h 43m", image: "galaxy"),
        Row(id: 3, name: "Shang-Chi and the Legend of the Ten Rings", time: "1h 58m", image: "shang")
    ])
]

var dates = [
    DateType(id: 0, date: "8", day: "Mon"),
    DateType(id: 1, date: "9", day: "Thu"),
    DateType(id: 2, date: "10", day: "Wed"),
    DateType(id: 3, date: "11", day: "Fri"),
    DateType(id: 4, date: "12", day: "Tue")
]

