var numArr = readLine()!.map{Int(String($0))!} //https://www.acmicpc.net/problem/1427
numArr.sort(by: >)
print(numArr.map{String($0)}.joined(separator: ""))
