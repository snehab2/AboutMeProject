//
//  CreditsView.swift
//  AboutMeProject
//
//  Created by scholar on 4/22/23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 27.0) {
            Text("Credits")
                .font(.title)
                .fontWeight(.semibold)
            Text("Claude Monet. Water Lilies, 1906. The Art Institute of Chicago.")
            Text("Claude Monet. Water Lily Pond, 1900. The Art Institute of Chicago.")
            Text("Claude Monet. Bordighera, 1884. The Art Institute of Chicago.")
            Text("Claude Monet. The Petite Creuse River, 1889. The Art Institute of Chicago.")
        }
        .padding(.horizontal, 40.0)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
