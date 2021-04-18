let numOfCases = Int(readLine()!)! //https://www.acmicpc.net/problem/1181
var set: Set<String> = []

for _ in 0..<numOfCases {
  set.insert(readLine()!)
}

var arr = [String](set)
var words: [(Int, String)] = []

for value in arr {
  words.append((value.count, value))
}

words.sort(by: {$0 < $1})
var result = ""

for value in words {
  result += "\(value.1)\n"
}
print(result)
