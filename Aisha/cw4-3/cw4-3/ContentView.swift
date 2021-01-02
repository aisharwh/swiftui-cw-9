//
//  ContentView.swift
//  cw4-3
//
//  Created by MacBook` on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        List {
            MovieRow (movieName: "Home Alone", movieCharacters: ["A","B","C"] )
            MovieRow (movieName: "Monster Inc", movieCharacters: ["D","E","F"] )
            MovieRow (movieName: "Madgascar", movieCharacters: ["H","I","J"] )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MovieRow: View {
    let movieName: String
    let movieCharacters: [String]
    
    var body: some View {
        HStack (alignment: .center){
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack (alignment: .leading)
                {
                Text(movieName).font(.largeTitle)
                Text (movieCharacters.joined(separator: ","))
            }
            
            
        }
    }
}
