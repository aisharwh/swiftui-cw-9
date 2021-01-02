//
//  ContentView.swift
//  cw5-1
//
//  Created by MacBook` on 02/01/2021.
//


import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
         
            List(movies) { movie in
                NavigationLink(
                    destination: MovieDetailView(movieName: movie),
                    label: {
                        MovieRow(movie: movie)
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
    let movie: Movie
    
    var body: some View {
        HStack (alignment: .center) {
            Image(movie.movieName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack (alignment: .leading)
                {
                Text(movie.movieName).font(.title2)
                Text (movie.movieCharacters.joined(separator: ","))
            }
            
            
        }
    }
}
