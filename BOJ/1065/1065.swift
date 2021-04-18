func countIsometric(number: Int) -> Int { //https://www.acmicpc.net/problem/1065
  var numberOfIsometric = 0
  for i in 1...number {
    if i < 100 {
      numberOfIsometric += 1
    } else {
      let separatedNumber = String(i).map{Int(String($0))!}
      if separatedNumber[0] - separatedNumber[1] == separatedNumber[1] - separatedNumber[2] {
        numberOfIsometric += 1
      }
    }
  }
  return numberOfIsometric
}

print(countIsometric(number: Int(readLine()!)!))
