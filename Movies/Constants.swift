//
//  Constants.swift
//  Movies
//
//  Created by Asadbek Mamutov on 04/01/26.
//

import Foundation
import SwiftUI

struct Constants {
    static let homeStr = "Home"
    static let upcomingStr = "Upcoming"
    static let searchStr = "Search"
    static let downloadStr = "Download"
    static let playStr = "Play"
    static let trendingMoviesStr = "Trending Movies"
    static let trendingTVStr = "Trending TV Shows"
    static let topRatedMoviesStr = "Top Rated Movies"
    static let topRatedTVStr = "Top Rated TV Shows"
    
    static let homeIconStr = "house"
    static let upcomingIconStr = "play.circle"
    static let searchIconStr = "magnifyingglass"
    static let downloadIconStr = "arrow.down.to.line"
    
    static let testTitleURL1 = "https://media.themoviedb.org/t/p/w440_and_h660_face/g96wHxU7EnoIFwemb2RgohIXrgW.jpg"
    static let testTitleURL2 = "https://media.themoviedb.org/t/p/w440_and_h660_face/k8bh5mvHDx3czHSF56v9lRyulLC.jpg"
    static let testTitleURL3 = "https://media.themoviedb.org/t/p/w440_and_h660_face/bjUWGw0Ao0qVWxagN3VCwBJHVo6.jpg"
    static let testTitleURL4 = "https://media.themoviedb.org/t/p/w440_and_h660_face/fHpKWq9ayzSk8nSwqRuaAUemRKh.jpg"
    static let testTitleURL5 = "https://media.themoviedb.org/t/p/w440_and_h660_face/fWVSwgjpT2D78VUh6X8UBd2rorW.jpg"
    static let testTitleURL6 = "https://media.themoviedb.org/t/p/w440_and_h660_face/1XS1oqL89opfnbLl8WnZY1O1uJx.jpg"
}

extension Text {
    func ghostButton() -> some View {
        self
            .frame(width: 100, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background{
                RoundedRectangle(cornerRadius: 17, style: .continuous)
                    .stroke(.buttonBorder, lineWidth: 7)
            }
    }
}
