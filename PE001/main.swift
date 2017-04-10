//
//  main.swift
//  PE001
//
//  Created by Kordian Ledzion on 10.04.2017.
//  Copyright © 2017 KordianLedzion. All rights reserved.
//

import Foundation

var result = 8
DispatchQueue.global(qos: .userInitiated).async {
    var i = 6
    while(i < 1000){
        if(i % 3 == 0 || i % 5 == 0){
            result += i
        }
    i += 1
    }
}

print(result)
