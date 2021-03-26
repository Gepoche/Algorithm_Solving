import Foundation //터렛 https://www.acmicpc.net/problem/1002

let numOfCases = Int(readLine()!)!

for _ in 1...numOfCases {
  let input = readLine()!.split(separator: " ").map{Double($0)!}

  let squaredX = pow(input[3]-input[0], 2)
  let squaredY = pow(input[4]-input[1], 2)
  let toSqrt = squaredX+squaredY
  let distance = toSqrt.squareRoot()

  let rDiff = abs(input[2]-input[5])
  let rSum = input[2]+input[5]

  if distance == rSum {
    print("1")
  } else if distance > rSum {
    print("0")
  } else if distance > rDiff && distance < rSum {
    print("2")
  } else if distance == 0 && rDiff == 0 {
    print("-1")
  } else if distance != 0 && rDiff == distance {
    print("1")
  } else if distance < rDiff {
    print("0")
  }
}
