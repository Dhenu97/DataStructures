//
//  main.swift
//  Balanced Parentheses
//
//  Created by BridgeLabz on 04/05/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

struct stack
{
    private var item: [Character] = []

    mutating func push(element:Character) {
        item.insert(element, at: 0)
    }
    mutating func pop() ->Character {
        return item.removeFirst()
    }
    mutating func matchingpair(c1:Character,c2:Character)->Bool
    {
        if  c1==")" && c2=="("
        {
            return true
        }
        else
        {
            return false
        }
    }
    mutating func balanced()->Bool
    {
        let exp="(a-b)"
        for char in exp
        {
            if char == "("
            {
                push(element: char)
            }
            if char == ")"
            {
                if item.isEmpty
                {
                    push(element: char)
                }
                if matchingpair(c1:char,c2:pop())
                {
                    return true
                }
            }
        }
        if item.isEmpty
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    
}
var s = stack()
if s.balanced()
{
    print("Balanced")
}
else
{
    print("Not Balanced")
}
