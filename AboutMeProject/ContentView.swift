//
//  ContentView.swift
//  AboutMeProject
//
//  Created by scholar on 4/21/23.
//

import SwiftUI

// root view

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            // zstack for background image
            ZStack {
                // first layer = painting
                Image("water_lilies")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    
                // second layer = rectangle
                Image(systemName: "rectangle.portrait.fill")
                    .font(.system(size:400))
                    .foregroundColor(.white)
                
                // third layer = text
                VStack(alignment: .leading) {
                    Text("Hi,\nmy name is")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Sneha")
                        .font(.system(size:70))
                        .fontWeight(.bold)
                        .padding(.bottom, -60.0)
                    Image("memoji_hi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, -75.0)
                        .frame(width: 230.0, height: 230.0)
                }
    
                // navigation link
                VStack {
                    // navigate to table of contents
                    NavigationLink(destination: TableOfContentsView()) {
                        Text("Learn More")
                            .foregroundColor(.white)
                    }
                    .frame(width: 300.0, height: 50.0)
                    .background(.black)
                    .cornerRadius(20.0)
                    
                    // navigate to image credits
                    NavigationLink(destination: CreditsView()) {
                        Text("Image Credit")
                            .foregroundColor(.white)
                    }
                    .frame(width: 300.0, height: 50.0)
                    .background(.black)
                    .cornerRadius(20.0)
                    
                    
                }
                .padding(.top, 600.0)
            }
            .padding(.top, -90.0)
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
