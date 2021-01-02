//
//  Movie.swift
//  cw5-1
//
//  Created by MacBook` on 02/01/2021.
//

import Foundation

struct Movie: Identifiable {
    let movieName: String
    let movieCharacters: [String]
    
    let id = UUID()
}

let movies = [
   Movie(movieName: "Home Alone", movieCharacters: ["Kevin","Harry","Marv"]),
    Movie(movieName: "Monster Inc", movieCharacters: ["Sulley","Boo","Mike"]) ,
    Movie(movieName: "Madgascar", movieCharacters: ["Alex","Marty","Gloria"])
    
]
