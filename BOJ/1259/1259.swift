while true { //https://www.acmicpc.net/problem/1259
  let n = readLine()!.map{Int(String($0))!}
  if n == [0] {
    break
  }
  if n == n.reversed() {
    print("yes")
  } else {
    print("no")
  }
}