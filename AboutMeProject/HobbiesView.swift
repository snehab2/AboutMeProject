//
//  HobbiesView.swift
//  AboutMeProject
//
//  Created by scholar on 4/21/23.
//

import SwiftUI

struct HobbiesView: View {
    // alert variables
    @State private var isSports = false
    @State private var isArtsAndCrafts = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                // first layer = painting
                Image("water_lilies")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    
                // second layer = rectangle
                Image(systemName: "rectangle.portrait.fill")
                    .resizable()
                    .frame(width: 350.0, height: 650.0)
                    .foregroundColor(.white)
                
                // vstack for text
                VStack(spacing: 27.0) {
                    // title and subtitle
                    VStack(alignment: .leading) {
                        Text("Hobbies")
                            .font(.system(size:40))
                            .fontWeight(.bold)
                        Text("Click on each button to learn more about my hobbies!")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                    }
                    .padding(.horizontal, 230.0)
                    
                    // vstack for buttons
                    VStack(spacing: 20.0) {
                        // sports
                        Button("🏐👟") {
                            isSports = true
                        }
                        .alert(isPresented: $isSports) {
                            // customize alert
                            Alert(
                                title: Text("I love to watch & play sports!"),
                                message: Text("My favorite sport to watch and play is volleyball. I also like watching and trying out other sports like soccer.")
                            )
                        }
                        .font(.system(size:80))
                        
                        // arts & crafts
                        Button("🎨🧶") {
                            isArtsAndCrafts = true
                        }
                        .alert(isPresented: $isArtsAndCrafts) {
                            // customize alert
                            Alert(
                                title: Text("I do anything arts & crafts related!"),
                                message: Text("Hobbies that have stuck with me include drawing and crocheting. I love to paint even though I'm bad at it.")
                            )
                        }
                        .font(.system(size:80))
                        .padding(.bottom, -90.0)
                        
                        // image
                        Image("memoji_handup")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.bottom, -163.0)
                            .frame(width: 230.0, height: 230.0)
                    }
                }
            }
        }
        .accentColor(.white)
    }
}

struct HobbiesView_Previews: PreviewProvider {
    static var previews: some View {
        HobbiesView()
    }
}
