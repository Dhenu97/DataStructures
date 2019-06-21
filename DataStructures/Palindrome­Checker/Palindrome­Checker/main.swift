//
//  main.swift
//  Palindrome­Checker
//
//  Created by BridgeLabz on 03/05/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation
import Swift

public struct Deque
{
    var dque = [Character]()
    
    
    mutating func enqueue(element: Character)
    {
        dque.append(element)
    }
    
    mutating func addFront(element: Character)
    {
        dque.insert(element, at: 0)
    }
    mutating func addRear(element:Character)
    {
        dque.insert(element, at: size())
    }
    
    mutating func dequeue() -> Character!
    {
        if dque.isEmpty
        {
            return nil
        }
        else
        {
            return dque.removeFirst()
        }
    }
    
    mutating func dequeueBack() -> Character?
    {
        if dque.isEmpty
        {
            return nil
        }
        else
        {
            return dque.removeLast()
        }
    }
    mutating func printQ()
    {
        for char in dque
        {
            print(char)
        }
    }
    mutating func size()->Int
    {
        return dque.count
    }
    mutating func isPallencheck(input:String)-> Bool
    {
        for char in input
        {
            enqueue(element: char)
        }
        let length=size()
        for _ in 1...length
        {
            addRear(element: dequeue()!)
            
        }
        var s=""
        for char in dque
        {
            s=s+String(char)
        }
        if s == input
        {
            
            return true
        }
        else
        {
            return false
        }
    }
}

var dq = Deque()
print("Enter String:")
let s=readLine()!
if dq.isPallencheck(input:s)
{
    print("String \(s) is Pallendrome")
}
else
{
    print("Not a pallendrome")
}
