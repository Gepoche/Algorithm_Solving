let _ = readLine() //https://www.acmicpc.net/problem/1978
let input = readLine()!.split(separator: " ").map{Int($0)!}
var output = 0

for value in input {
  if value == 1 {
    output += 1
    continue
  } else {
    for i in 2..<value {
      if value % i == 0 {
        output += 1
        break
      }
    }
  }
}

print(input.count - output)
