let numOfCases = Int(readLine()!)! //https://www.acmicpc.net/problem/10814
var arr: [(Int, Int, String)] = []

for i in 0..<numOfCases {
  let input = readLine()!.split(separator: " ").map{String($0)}
  arr.append((Int(input[0])!, i, input[1]))
}

arr.sort(by: <)
var result = ""

for value in arr {
  result += "\(value.0) \(value.2)\n"
}

print(result)
