//
//  ContentView.swift
//  DijkstraAlgorithm
//
//  Created by 李招雄 on 2020/7/11.
//  Copyright © 2020 李招雄. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let dijkstra = Dijkstra()
    
    var body: some View {
        HStack {
            ForEach(dijkstra.characters, id: \.self) { cs in
                VStack {
                    ForEach(cs, id: \.self) { c in
                        Text(String(c))
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
