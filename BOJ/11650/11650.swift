let numOfCases = Int(readLine()!)! //https://www.acmicpc.net/problem/11650
var arr: [[Int]] = []

for _ in 0..<numOfCases {
  let input = readLine()!.split(separator: " ").map{Int($0)!}
  arr.append([input[0], input[1]])
}

arr.sort(by: {
  if $0[0] == $1[0] {
    return $0[1] < $1[1]
  }
  return $0[0] < $1[0]
})

for i in 0..<arr.count {
  print(arr[i].map{String($0)}.joined(separator: " "))
}
