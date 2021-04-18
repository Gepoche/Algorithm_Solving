let numOfCases = Int(readLine()!)! //https://www.acmicpc.net/problem/11651
var arr: [(Int, Int)] = []

for _ in 0..<numOfCases {
  let input = readLine()!.split(separator: " ").map{Int($0)!}
  arr.append((input[0], input[1]))
}

arr.sort(by: {
  if $0.1 == $1.1 {
    return $0.0 < $1.0
  }
  return $0.1 < $1.1
})

for i in 0..<numOfCases {
  print("\(arr[i].0) \(arr[i].1)")
}
