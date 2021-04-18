let numOfCases = Int(readLine()!)! //https://www.acmicpc.net/problem/1181
var arr: [String] = []

for _ in 0..<numOfCases {
  arr.append(readLine()!)
}

print(Array(Set(arr)).sorted(by: {
  if $0.count == $1.count {
    return $0 < $1
  }
  return $0.count < $1.count
}).joined(separator: "\n"))
