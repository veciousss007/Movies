//
//  HomeView.swift
//  Movies
//
//  Created by Asadbek Mamutov on 04/01/26.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleURL1
    
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical) {
                LazyVStack {
                    AsyncImage(url: URL(string: heroTestTitle)) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 7))
                            .overlay {
                                LinearGradient(
                                    stops: [Gradient.Stop(color: .clear, location: 0.77),
                                            Gradient.Stop(color: .gradient, location: 0.99)],
                                    startPoint: .top,
                                    endPoint: .bottom)
                            }
                            .padding(1)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: geo.size.width, height: geo.size.height * 0.88)
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Text(Constants.playStr)
                                .ghostButton()
                        }
                        
                        Button {
                            
                        } label: {
                            Text(Constants.downloadStr)
                                .ghostButton()
                        }
                    }
                    
                    HorizontalListView(header: Constants.trendingMoviesStr)
                    HorizontalListView(
                        header: Constants.trendingTVStr,
                        titles: [
                            Constants.testTitleURL4,
                            Constants.testTitleURL5,
                            Constants.testTitleURL6,
                        ])
                    HorizontalListView(header: Constants.topRatedMoviesStr)
                    HorizontalListView(
                        header: Constants.topRatedTVStr,
                        titles: [
                            Constants.testTitleURL6,
                            Constants.testTitleURL4,
                            Constants.testTitleURL5,
                        ])
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
