let num = Int(readLine()!)! //https://www.acmicpc.net/problem/2439
for i in 1...num {
  if i < num {
    for _ in 1...(num-i) {
      print(" ", terminator: "")
    }
  }
  for _ in 1...i {
    print("*", terminator: "")
  }
  print("")
}
