//
//  HorizontalListView.swift
//  Movies
//
//  Created by Asadbek Mamutov on 04/01/26.
//

import SwiftUI

struct HorizontalListView: View {
    let header : String
    var titles = [Constants.testTitleURL1, Constants.testTitleURL2, Constants.testTitleURL3]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(Constants.trendingMoviesStr)
                .font(.title)
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(titles, id:\.self) {title in
                        AsyncImage(url: URL(string: title)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 7))
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 120, height: 200)
                    }
                }
            }
        }
        .frame(height: 250)
        .padding(10)
    }
}

#Preview {
    HorizontalListView(header: Constants.trendingMoviesStr)
}
