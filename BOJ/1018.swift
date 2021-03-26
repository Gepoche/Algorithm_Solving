import Foundation //체스판 다시 칠하기 https://www.acmicpc.net/problem/1018

let lineInput = readLine()!.split(separator: " ").map{Int($0)!}

var input: [String] = []
var diff: [Int] = []

let wStart = 
["WBWBWBWB",
 "BWBWBWBW",
 "WBWBWBWB",
 "BWBWBWBW",
 "WBWBWBWB",
 "BWBWBWBW",
 "WBWBWBWB",
 "BWBWBWBW"]

let bStart =
["BWBWBWBW",
 "WBWBWBWB",
 "BWBWBWBW",
 "WBWBWBWB",
 "BWBWBWBW",
 "WBWBWBWB",
 "BWBWBWBW",
 "WBWBWBWB"]

for _ in 0..<lineInput[0] {
  input.append(readLine()!)
}

for i in 0..<lineInput[0]-7 {
  for j in 0..<lineInput[1]-7 {
    var tempW = 0
    var tempB = 0
    for y in i..<i+8 {
      for x in j..<j+8 {
        if input[y][input[y].index(input[y].startIndex, offsetBy: x)] != wStart[y-i][wStart[y-i].index(wStart[y-i].startIndex, offsetBy: x-j)] {
          tempW += 1
        }
        if input[y][input[y].index(input[y].startIndex, offsetBy: x)] != bStart[y-i][bStart[y-i].index(bStart[y-i].startIndex, offsetBy: x-j)] {
          tempB += 1
        }
      }
    }
    if tempW < tempB {
      diff.append(tempW)
    } else {
      diff.append(tempB)
    }
  }
}

print(diff.min()!)
