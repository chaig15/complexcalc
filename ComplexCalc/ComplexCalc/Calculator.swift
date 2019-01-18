//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    func add(lhs: Int, rhs: Int) -> Int{
        return lhs+rhs;
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int{
        return lhs-rhs;
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int{
        return lhs*rhs;
    }
    
    func divide(lhs: Int, rhs: Int) -> Int{
        return lhs/rhs;
    }
    
    func add(_ args: [Int]) -> Int {
        var sum: Int = 0;
        for element in args {
            sum += element;
        }
        return sum;
    }
    
    func multiply(_ args: [Int]) -> Int {
        var product: Int = 1;
        for element in args {
            product = product * element;
        }
        return product;
    }
    
    func count(_ args: [Int]) -> Int {
        return args.count;
    }
    
    func avg(_ args: [Int]) -> Int {
        return add(args)/count(args);
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]!+rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]!-rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs);
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var start: Int = op(beg, args[0]);
        for (index, element) in args.enumerated() where index != 0 {
            start = op(start, element)
        }
        return start;
    }
}


