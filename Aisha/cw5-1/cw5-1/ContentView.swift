//
//  ContentView.swift
//  cw5-1
//
//  Created by MacBook` on 02/01/2021.
//


import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    var body: some View {
        NavigationView{
         
            List {
            
                NavigationLink(
                destination: MovieDetailView(movieName: "Home Alone", movieCharacters: ["Kevin","Harry","Marv"]),
                label: {
                     MovieRow (movieName: "Home Alone", movieCharacters: ["Kevin","Harry","Marv"] )
                })
                
                NavigationLink(
                destination: MovieDetailView(movieName: "Monster Inc", movieCharacters: ["Sulley","Boo","Mike"]),
                label: {
                     MovieRow (movieName: "Monster Inc", movieCharacters: ["Sulley","Boo","Mike"] )
                })
            
                NavigationLink(
                destination: MovieDetailView(movieName: "Madgascar", movieCharacters: ["Alex","Marty","Gloria"]),
                label: {
                    MovieRow (movieName: "Madgascar", movieCharacters: ["Alex","Marty","Gloria"] )
               })
                
        }
        .navigationBarTitle("Movies")
        }
        .accentColor(.white)
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
        HStack (alignment: .center) {
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack (alignment: .leading)
                {
                Text(movieName).font(.title2)
                Text (movieCharacters.joined(separator: ","))
            }
            
            
        }
    }
}
