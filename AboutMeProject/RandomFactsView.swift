//
//  RandomFactsView.swift
//  AboutMeProject
//
//  Created by scholar on 4/21/23.
//

import SwiftUI

struct RandomFactsView: View {
    @State private var title = "Click on the button to generate a random fun fact!"
    @State private var facts = ["I played the cello for ~9 years.", "I love to make jibbitz for my crocs.", "My favorite shoes are New Balances and Crocs.", "I did gymnastics for 3 years."]
    var body: some View {
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
            
            VStack(alignment: .center, spacing: 39.0) {
                // text
                Text(title)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(width:250.0)
                
                // button
                Button("Generate fact") {
                    // generate a random index and replace current title with a fact
                    var random = Int.random(in: 0..<4)
                    title = facts[random]
                }
                .font(.title)
                .foregroundColor(Color("blue"))
                
                // image
                Image("memoji_silly")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, -75.0)
                    .frame(width: 230.0, height: 230.0)
                
            }
        }
    }
}

struct RandomFactsView_Previews: PreviewProvider {
    static var previews: some View {
        RandomFactsView()
    }
}
