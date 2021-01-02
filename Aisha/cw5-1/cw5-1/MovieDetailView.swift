//
//  MovieDetailView.swift
//  cw5-1
//
//  Created by MacBook` on 02/01/2021.
//

import SwiftUI

struct MovieDetailView: View {
    let movieName: String
    let movieCharacters: [String]
    
    var body: some View {
        ZStack{
        Group{
            Image (movieName)
                .resizable()
                .scaledToFill()
                .blur(radius: 40)
            Color.black.opacity(0.3)
        }.ignoresSafeArea()
        
        VStack (alignment: .center){
            Image (movieName)
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .background(Color.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white, lineWidth: 6))
            
            Text(movieName)
                .font(.system(size: 50))
                .bold()
            
            Text(movieCharacters.joined(separator: ", "))
                .font(.title)
            
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
        .shadow(radius: 8 )
    }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movieName: "Home Alone", movieCharacters: ["Kevin","Harry","Marv"])
       
    }
}
