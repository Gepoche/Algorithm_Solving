let input = readLine()!.split(separator: " ").map{Int($0)!} //https://www.acmicpc.net/problem/1929

let a = input[0]
let b = input[1]

var i = 2

var arr = [Bool](repeating: true, count: b+1)

arr[1] = false

while i*i <= b{
  if arr[i] == true {
    var j = i*2
    while j <= b {
      arr[j] = false
      j += i
    }
  }
  i += 1
}

for i in a...b {
  if arr[i] {
    print(i)
  }
}
