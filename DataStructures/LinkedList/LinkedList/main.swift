import Foundation

//  UnOrderedList

//

//  Created by BridgeLabz Solutions LLP  on 5/2/19.

//  Copyright © 2019 Apple Inc. All rights reserved.

//



/*if let filepath = Bundle.main.path(forResource: "my", ofType: "txt")
 
 {
 
 
 
 do
 
 {
 
 let file = try String(contentsOfFile: filepath, encoding: String.Encoding.utf8)
 
 let text: [String] = file.components(separatedBy: " ")
 
 print(text)
 
 }
 
 catch
 
 {
 
 Swift.print("Couldn't read the contents!")
 
 }
 
 }
 
 else
 
 {
 
 print("my.txt not found!")
 
 }*/

import Foundation
import Swift
let path = "/Users/bridgelabz/Desktop/untitled folder/DataStructures/LinkedList/LinkedList/New Text Document.txt"
var contents = " "

do {
    // Get the contents
    let contents = try NSString(contentsOfFile: path, encoding: String.Encoding.utf8.rawValue)
    print(contents)
}
catch let error as NSError {
    print("Ooops! Something went wrong: \(error)")
}



let path2 = "/Users/bridgelabz/Desktop/untitled folder/DataStructures/LinkedList/LinkedList/New Text Document.txt"

// Set the contents

let content = contents

do {
    // Write contents to file
    try contents.write(toFile: path2, atomically: false, encoding: String.Encoding.utf8)
}
catch let error as NSError {
    print("Ooops! Something went wrong: \(error)")
}







public class Node
    
{
    
    var value: String?
    
    var next: Node?
    
    
    
    init(value:String)
        
    {
        
        self.value = value
        
    }
    
}

class UnorderdList
    
{
    
    var head:Node?
    
    var isEmpty:Bool
        
    {
        
        return head==nil
        
    }
    
    func insert(value:String)
        
    {
        
        let newNode = Node(value: value)
        
        if var currNode = head
            
        {
            
            while currNode.next != nil
                
            {
                
                currNode = currNode.next!
                
            }
            
            currNode.next = newNode
            
            
            
        }
            
        else
            
        {
            
            head = newNode
            
        }
        
        
        
    }
    
    
    
    func searchNode(item:String)-> (i:Int,flag:Bool)
        
    {
        
        var current = head
        
        var i  = 1
        
        var flag=false
        
        if head == nil
            
        {
            
            print("List is empty")
            
        }
            
        else
            
        {
            
            while current != nil
                
            {
                
                if current?.value == item
                    
                {
                    
                    flag = true
                    
                    break
                    
                }
                
                i+=1
                
                current = current?.next
                
            }
            
        }
        
        return (i,flag)
        
        
        
    }
    
    
    
    
    
    func deleteNode(at position: Int)
        
    {
        
        if head == nil
            
        {
            
            return
            
        }
        
        var temp = head
        
        
        
        if (position == 0)
            
        {
            
            head = temp?.next
            
            return
            
        }
        
        
        
        for _ in 0..<position-1 where temp != nil
            
        {
            
            temp = temp?.next
            
        }
        
        
        
        if temp == nil || temp?.next == nil
            
        {
            
            return
            
        }
        
        
        
        let nextToNextNode = temp?.next?.next
        
        
        
        temp?.next = nextToNextNode
        
    }
    
    func printList()
        
    {
        
        var current: Node? = head
        
        while (current != nil)
            
        {
            
            print("\(current?.value ?? "")")
            
            current = current?.next
            
        }
        
    }
    
}

let list = UnorderdList()

var s:[String]=["/Users/bridgelabz/Desktop/untitled folder/DataStructures/LinkedList/LinkedList/New Text Document.txt"]

for i in 0...s.count-1
    
{
    
    list.insert(value: s[i])
    
}

list.printList()

print("Enter String to Search:")

var s1=(readLine()!)

var ll=list.searchNode(item: s1)

if ll.flag == true
    
{
    
    list.deleteNode(at: ll.i-1)
    
    list.printList()
    
}
    
else
    
{
    
    list.insert(value: s1)
    
    list.printList()
    
}



