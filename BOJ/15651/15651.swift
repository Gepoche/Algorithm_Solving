let input = readLine()!.split(separator: " ").map{Int($0)!} //https://www.acmicpc.net/problem/15651
let n = input[0]
let m = input[1]

var str = ""

func backTrack(_ depth: Int, _ arr: [Int]) {
  var vArr = arr
  if depth >= m { 
    str += "\(vArr.map{String($0)}.joined(separator: " "))\n"
    return
  }

  for i in 1...n {
    vArr.append(i)
    backTrack(depth+1, vArr)
    vArr.removeLast()
  }
}

backTrack(0, [])
print(str)
