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

print("---- ---- ASYNC ---- ----")

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

print("---- ---- RESULT ---- ----")

//delay to let the async wokr finish
usleep(100)

print("\(times.min()!) at index \(times.index(of: times.min()!)!)")
