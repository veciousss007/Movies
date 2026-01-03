//
//  ContentView.swift
//  Movies
//
//  Created by Asadbek Mamutov on 03/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.homeStr, systemImage: Constants.homeIconStr) {
                HomeView()
            }
            Tab(Constants.upcomingStr, systemImage: Constants.upcomingIconStr) {
                Text(Constants.upcomingIconStr)
            }
            Tab(Constants.searchStr, systemImage: Constants.searchIconStr) {
                Text(Constants.searchIconStr)
            }
            Tab(Constants.downloadStr, systemImage: Constants.downloadIconStr) {
                Text(Constants.downloadIconStr)
            }
        }
    }
}

#Preview {
    ContentView()
}
