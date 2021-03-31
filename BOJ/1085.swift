import Foundation //https://www.acmicpc.net/problem/1085

let input = readLine()!.split(separator: " ").map{Int($0)!}

let x = input[0]
let y = input[1]
let w = input[2]
let h = input[3]

var distance = [Int](repeating: 0, count: 4)

distance[0] = y
distance[1] = x
distance[2] = w - x
distance[3] = h - y

print(distance.min()!)
