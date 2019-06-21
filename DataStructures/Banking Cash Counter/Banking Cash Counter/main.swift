//
//  main.swift
//  Banking Cash Counter
//
//  Created by BridgeLabz on 04/05/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation
struct que
{
    var item:[String] = []
    mutating func equeue(element:String)
    {
        item.append(element)
    }
    mutating func dequeue()->String?
    {
        if item.isEmpty {
            return nil
        }
        else{
            let tem = item.first
            item.remove(at: 0)
            return tem
        }
    }
    mutating func addmembers()
    {
        //add people in que
        var q1 = que()
        var cash = 100000
        print("press 1 to withdraw")
         print("press 2 to deposit")
        let banking = Int(readLine()!)!
        
        print("enter number of pesons")
        let people = Int(readLine()!)!
        for _ in 0...people
        {
            print("enter person name:")
            q1.equeue(element: readLine()!)
        }
        print("the queue is")
        print(item)
        for _ in 0...people
        {
            print("welcome to the cash counter")
            _ = Int(readLine()!)
            
            
           
            
            
            switch banking
            {
            case 1:
                print("enter the amount that you want to withdraw")
                let withdraw = Int(readLine()!)!
                //validation
                if withdraw > 0 && withdraw <= cash
                {
                    cash = cash - withdraw
                    print("thankyou please visit again")
                    if cash == 0 {
                        print("no cash in your account")
                        return
                    }
                    print("update  amount is11\(cash)")
                }
                else {
                    print("please enter the valid amount")
                    return
                }
                break
            case 2:
                print("enter the amount that you have to deposite")
                print("enter amount to deposite")
                let deposit = Int(readLine()!)!
                if deposit > 0 {
                    cash = cash + deposit
                    print("update cash \(cash)")
                    break
                }
                else {
                    print("please enter the valid amount")
                    return
                }
                
                

                break
            default:
                print("invalid")
            }
            print("thankyou\(dequeue()!)")
            if people > 0{
                print("current que is ")
            }
            else{
                print("")
            }
    }
    
    
}

}
var q2 = que()
q2.addmembers()

