//
//  main.swift
//  InsertionSort
//
//  Created by Ensteincode on 23/03/18.
//

import Foundation

print("Insertion Sort Demonstration")

func insertionSort<T:Comparable>(array: inout [T]) {
    for i in 0..<array.count {
        let value = array[i]
        var j = i - 1
        while j >= 0 {
            if array[j] > value{
                array[j+1] = array[j]
            } else {
                break
            }
            j -= 1
        }
        array[j+1] = value
    }
}


var array = [UInt32]()

for _ in 1...20 {
    array.append(arc4random_uniform(30))
}

print("unsorted \(array)")
insertionSort(array: &array)
print("sorted   \(array)")
