//
//  Dijkstra.swift
//  DijkstraAlgorithm
//
//  Created by 李招雄 on 2020/7/11.
//  Copyright © 2020 李招雄. All rights reserved.
//

import Foundation

class Dijkstra {
    var characters = [[Character]]()
    var graph = [Character:[Character:Int]]()
    var costs = [Character:Int]()
    var parents = [Character:Character]()
    
    init() {
        reset()
    }
    
    func reset(_ num: Int = 6) {
        resetCharacters(num)
        resetGraph()
    }
    
    private func resetGraph() {
        graph.removeAll()
        for i in 0..<characters.count-1 {
            for key in characters[i] {
                var dic = [Character:Int]()
                for c in characters[i+1] {
                    dic[c] = Int.random(in: 1...9)
                }
                graph[key] = dic
            }
        }
    }
    
    private func resetCharacters(_ num: Int) {
        characters.removeAll()
        characters.append(["起"])
        var c = 0
        while c < num {
            var arr = [Character]()
            for _ in 0..<Int.random(in: 2...3) {
                let scalar = "A".utf8.first! + UInt8(c)
                arr.append(Character(Unicode.Scalar(scalar)))
                c += 1
            }
            characters.append(arr)
        }
        characters.append(["终"])
    }

}
