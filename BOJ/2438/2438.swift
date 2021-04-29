let num = Int(readLine()!)! //https://www.acmicpc.net/problem/2438

for i in 1...num {
  for _ in 1...i {
    print("*", terminator: "")
  }
  print("")
}
