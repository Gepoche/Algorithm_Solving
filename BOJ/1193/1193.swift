var num = Int(readLine()!)! //https://www.acmicpc.net/problem/1193
var numerator = 1
var denomiantor = 1
var numPerLine = 1
var isGoingUp = true

while num > numPerLine {
  num -= numPerLine
  if isGoingUp {
    denomiantor = numerator
    numerator = 1
    denomiantor += 1
    isGoingUp = false
  } else {
    numerator = denomiantor
    denomiantor = 1
    numerator += 1
    isGoingUp = true
  }
  numPerLine += 1
}

if isGoingUp {
  denomiantor = denomiantor + num - 1
  numerator = numerator - num + 1
} else {
  denomiantor = denomiantor - num + 1
  numerator = numerator + num - 1
}

print("\(numerator)/\(denomiantor)")
