//
//  main.swift
//  ImplementingUF
//
//  Created by 桑染 on 2020-02-26.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func findCircleNum(_ M: [[Int]]) -> Int {
    let n = M.count
    
    if n == 0 {
        return 0
    }
    var unionFind = UF(n)
    
    for i in 0..<n {
        for j in i + 1..<n {
            if M[i][j] == 1 {
                unionFind.union(i, j)
            }
        }
    }
    return unionFind.count
}

