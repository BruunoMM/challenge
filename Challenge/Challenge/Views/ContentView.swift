//
//  ContentView.swift
//  Challenge
//
//  Created by Bruno Marinho on 19/01/20.
//  Copyright © 2020 brunomarinho. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(matches, rowContent: MatchView.init)
            }
            .navigationBarTitle("Partidas")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
