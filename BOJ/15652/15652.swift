let input = readLine()!.split(separator: " ").map{Int($0)!} //https://www.acmicpc.net/problem/15652
let n = input[0]
let m = input[1]

var str = ""
var output: [Int] = []

func backTrack(_ depth: Int, _ last: Int) {
  if depth >= m { 
    str += "\(output.map{String($0+1)}.joined(separator: " "))\n"
    return
  }

  for i in 0..<n {
    if last > i {
      continue
    }
    output.append(i)
    backTrack(depth+1, i)
    output.removeLast()
  }
}

backTrack(0, 0)
print(str)
