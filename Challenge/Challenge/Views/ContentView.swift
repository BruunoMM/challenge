//
//  ContentView.swift
//  Challenge
//
//  Created by Bruno Marinho on 19/01/20.
//  Copyright © 2020 brunomarinho. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    MatchView(homeTeam: "FLA", awayTeam: "GRE")
                    MatchView(homeTeam: "BAH", awayTeam: "INT")
                    MatchView(homeTeam: "COR", awayTeam: "CSA")
                }
            }
            .navigationBarTitle("Partidas")
            .navigationBarHidden(false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
