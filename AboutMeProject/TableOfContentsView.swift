//
//  TableOfContentsView.swift
//  AboutMeProject
//
//  Created by scholar on 4/21/23.
//

import SwiftUI

struct TableOfContentsView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 30.0) {
                    // title
                    Text("What would you like to learn more about?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal, 30.0)
                        
                    // navigate to hobbies
                    NavigationLink(destination: HobbiesView()) {
                        // use zstack to change the background of the link to an image
                        ZStack {
                            Image("water_lily_pond")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .edgesIgnoringSafeArea(.all)
                            VStack {
                                Text("Hobbies")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                            }
                        }
                            
                    }
                    .frame(width: 300.0, height: 150.0)
                    .cornerRadius(20.0)
                    
                    // navigate to interests
                    NavigationLink(destination: InterestsView()) {
                        ZStack {
                            Image("bordighera")
                            VStack {
                                Text("Interests")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .frame(width: 300.0, height: 150.0)
                    .cornerRadius(20.0)
                    
                    // navigate to random facts
                    NavigationLink(destination: RandomFactsView()) {
                        ZStack {
                            Image("river")
                            VStack {
                                Text("Random Facts")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .frame(width: 300.0, height: 150.0)
                    .background(.black)
                    .cornerRadius(20.0)
                
                }
            }
        }
    }
}

struct TableOfContentsView_Previews: PreviewProvider {
    static var previews: some View {
        TableOfContentsView()
    }
}
