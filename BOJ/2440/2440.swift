let n = Int(readLine()!)! //https://www.acmicpc.net/problem/2440

for i in stride(from: n, to: 0, by: -1) {
    for _ in 0..<i {
        print("*", terminator: "")
    }
    print()
}
