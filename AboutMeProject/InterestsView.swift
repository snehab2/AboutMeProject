//
//  InterestsView.swift
//  AboutMeProject
//
//  Created by scholar on 4/21/23.
//

import SwiftUI

struct InterestsView: View {
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
                
                // third layer = text
                VStack(alignment: .leading, spacing: 8.0) {
                    // title
                    Text("Interests")
                        .font(.system(size:40))
                        .fontWeight(.semibold)
                        .padding(.bottom, 15.0)
                    
                    // interest 1
                    Text("Music")
                        .font(.system(size:20))
                        .fontWeight(.semibold)
                    Text("I love to listen to music. My favorite artists are SZA, TWICE, and Keshi.")
                        .frame(width: 250.0)
                    
                    // interest 2
                    Text("Art")
                        .font(.system(size:20))
                        .fontWeight(.semibold)
                    Text("I enjoy going to art museums, and reading and looking at art. My favorite artist is Claude Monet and Vincent Van Gogh.")
                        .padding(.bottom, -30.0)
                        .frame(width: 255.0)

                    // image
                    Image("memoji_heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, -150.0)
                        .frame(width: 230.0, height: 230.0)
                }
            }
        }
    }
}

struct InterestsView_Previews: PreviewProvider {
    static var previews: some View {
        InterestsView()
    }
}
