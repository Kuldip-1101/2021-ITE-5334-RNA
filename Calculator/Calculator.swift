//
//  Calculator.swift
//  Calculator
//
//  Created by user202376 on 10/1/21.
//

import Foundation

var operationString = [String]()


func push(s:String)
{
    operationString.append(s);
}

func calculator_logic()-> Int
{
    var N1 = 0
    var N2 = 0
    var total = 0
    
    for index in 0...(operationString.count-1){
        switch operationString[index] {
        
        case "+":
            if N1 == 0 && N2 == 0{
                N1 = Int(operationString[index-1])!
                N2 = Int(operationString[index+1])!
                total = N1 + N2
                N1 = total
            }
            else
            {
                N2 = Int(operationString[index+1])!
                total = N1 + N2
                N1 = total
                
            }
            break
            
        case "-":
            if N1 == 0 && N2 == 0{
                N1 = Int(operationString[index-1])!
                N2 = Int(operationString[index+1])!
                total = N1 - N2
                N1 = total
            }
            else
            {
                N2 = Int(operationString[index+1])!
                total = N1 - N2
                N1 = total
            }
            break
            
        case "*":
            if N1 == 0 && N2 == 0{
                N1 = Int(operationString[index-1])!
                N2 = Int(operationString[index+1])!
                total = N1 * N2
                N1 = total
            }
            else
            {
                N2 = Int(operationString[index+1])!
                total = N1 * N2
                N1 = total
            }
            break
        
        case "/":
            if N1 == 0 && N2 == 0{
                N1 = Int(operationString[index-1])!
                N2 = Int(operationString[index+1])!
                total = N1 / N2
                N1 = total
            }
            else
            {
                N2 = Int(operationString[index+1])!
                total = N1 / N2
                N1 = total
            }
            break
            
        default:
            break
        }
        
    }
    operationString.removeAll()
    return total
}

func Validate() -> Bool
{
    var opeIndex = 1
    var numIndex = 0
    
    if operationString[0] == "+" && operationString[0] == "-" && operationString[0] == "*" && operationString[0] == "/"
    {
        operationString.removeAll()
        return false
    }
    
    for index in 1...(operationString.count-1){
        
        switch operationString[index] {
        
        case "+":
            if opeIndex  == index-1 || opeIndex  == index+1
            {
                operationString.removeAll()
                return false
            }
            else
            {
                opeIndex  = index
                continue
            }
            
        case "-":
            if opeIndex  == index-1 || opeIndex  == index+1
            {
                operationString.removeAll()
                return false
                
            }
            else
            {
                opeIndex  = index
                continue
            }
            
        case "*":
            if opeIndex  == index-1 || opeIndex  == index+1
            {
                operationString.removeAll()
                return false
            }
            else
            {
                opeIndex  = index
                continue
            }

        
        case "/":
            if opeIndex  == index-1 || opeIndex  == index+1
            {
                operationString.removeAll()
                return false
            }
            else
            {
                opeIndex  = index
                continue
            }

        case "=":
            return false
        
            
        default:
            if numIndex == index-1 || numIndex == index+1
            {
                operationString.removeAll()
                return false
            }
            else
            {
                numIndex = index
                continue
            }
        }
    }
    return true
}


func clean()
{
    operationString.removeAll()
}
