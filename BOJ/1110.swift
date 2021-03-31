var startNum = readLine()!.map{Int(String($0))!} //https://www.acmicpc.net/problem/1110
if(startNum.count == 1) {
  startNum.insert(0, at: 0)
}
var currentNum: [Int] = startNum
var i: Int = 0

repeat {
  currentNum.append(currentNum.reduce(0){$0 + $1} % 10)
  currentNum.removeFirst()
  i += 1
} while(startNum != currentNum)

print(i) 
