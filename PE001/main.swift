//
//  main.swift
//  PE001
//
//  Created by Kordian Ledzion on 10.04.2017.
//  Copyright © 2017 KordianLedzion. All rights reserved.
//

import Foundation

var times = [Double]()

var index = 0

func printTimeElapsedWhenRunningCode(operation:()->()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("#\(index) \(timeElapsed)")
    index += 1
    times.append(Double(timeElapsed))
}

print("---- ---- ITER ---- ----")

printTimeElapsedWhenRunningCode{
    var result = 8
    var i = 6
    while(i < 1000){
        if(i % 3 == 0 || i % 5 == 0){
            result += i
        }
        i += 1
    }
}

printTimeElapsedWhenRunningCode{
    var result = 8
    var i = 6
    while(i < 1000){
        if(i % 3 == 0 || i % 5 == 0){
            result += i
        }
        i += 1
    }
}

printTimeElapsedWhenRunningCode{
    var result = 8
    var i = 6
    while(i < 1000){
        if(i % 3 == 0 || i % 5 == 0){
            result += i
        }
        i += 1
    }
}

printTimeElapsedWhenRunningCode{
    var result = 8
    var i = 6
    while(i < 1000){
        if(i % 3 == 0 || i % 5 == 0){
            result += i
        }
        i += 1
    }
}

printTimeElapsedWhenRunningCode{
    var result = 8
    var i = 6
    while(i < 1000){
        if(i % 3 == 0 || i % 5 == 0){
            result += i
        }
        i += 1
    }
}

print("---- ---- SYNC ---- ----")

printTimeElapsedWhenRunningCode{
    var result = 8
    DispatchQueue.global(qos: .userInteractive).sync {
        var i = 6
        while(i < 1000){
            if(i % 3 == 0 || i % 5 == 0){
                result += i
            }
            i += 1
        }
    }
}

printTimeElapsedWhenRunningCode{
    var result = 8
    DispatchQueue.global(qos: .userInteractive).sync {
        var i = 6
        while(i < 1000){
            if(i % 3 == 0 || i % 5 == 0){
                result += i
            }
            i += 1
        }
    }
}

printTimeElapsedWhenRunningCode{
    var result = 8
    DispatchQueue.global(qos: .userInteractive).sync {
        var i = 6
        while(i < 1000){
            if(i % 3 == 0 || i % 5 == 0){
                result += i
            }
            i += 1
        }
    }
}

printTimeElapsedWhenRunningCode{
    var result = 8
    DispatchQueue.global(qos: .userInteractive).sync {
        var i = 6
        while(i < 1000){
            if(i % 3 == 0 || i % 5 == 0){
                result += i
            }
            i += 1
        }
    }
}

printTimeElapsedWhenRunningCode{
    var result = 8
    DispatchQueue.global(qos: .userInteractive).sync {
        var i = 6
        while(i < 1000){
            if(i % 3 == 0 || i % 5 == 0){
                result += i
            }
            i += 1
        }
    }
}

print("---- ---- ASYNC ---- ----") //async blocks inside sync blocks to make sure one async run is running at one time

DispatchQueue.global(qos: .userInteractive).sync{
printTimeElapsedWhenRunningCode{
    var result = 8
    DispatchQueue.global(qos: .userInteractive).async {
        var i = 6
        while(i < 1000){
            if(i % 3 == 0 || i % 5 == 0){
                result += i
            }
            i += 1
        }
    }
}
}

DispatchQueue.global(qos: .userInteractive).sync{
printTimeElapsedWhenRunningCode{
    var result = 8
    DispatchQueue.global(qos: .userInteractive).async {
        var i = 6
        while(i < 1000){
            if(i % 3 == 0 || i % 5 == 0){
                result += i
            }
            i += 1
        }
    }
}
}

DispatchQueue.global(qos: .userInteractive).sync{
printTimeElapsedWhenRunningCode{
    var result = 8
    DispatchQueue.global(qos: .userInteractive).async {
        var i = 6
        while(i < 1000){
            if(i % 3 == 0 || i % 5 == 0){
                result += i
            }
            i += 1
        }
    }
}
}

DispatchQueue.global(qos: .userInteractive).sync{
printTimeElapsedWhenRunningCode{
    var result = 8
    DispatchQueue.global(qos: .userInteractive).async {
        var i = 6
        while(i < 1000){
            if(i % 3 == 0 || i % 5 == 0){
                result += i
            }
            i += 1
        }
    }
}
}

DispatchQueue.global(qos: .userInteractive).sync{
printTimeElapsedWhenRunningCode{
    var result = 8
    DispatchQueue.global(qos: .userInteractive).async {
        var i = 6
        while(i < 1000){
            if(i % 3 == 0 || i % 5 == 0){
                result += i
            }
            i += 1
        }
    }
}
}

print("---- ---- RESULT ---- ----")

print("Best time \(times.min()!) at index \(times.index(of: times.min()!)!)")
print("Worst time \(times.max()!) at index \(times.index(of: times.max()!)!)")
