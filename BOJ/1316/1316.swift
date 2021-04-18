let numberOfCases = Int(readLine()!)! //https://www.acmicpc.net/problem/1316
var numberOfGroup = numberOfCases

for _ in 0..<numberOfCases {
  let word = readLine()!.map{String($0)
  }
  var didCheck = [Bool](repeating: false, count: 26)
  for i in 0..<word.count {
    if didCheck[Int(Character(word[i]).asciiValue!-97)] {
      if word[i] == word[i-1] {
        continue
      } else {
        numberOfGroup -= 1
        break
      }
    } else {
      didCheck[Int(Character(word[i]).asciiValue!-97)] = true
    }
  }
}

print(numberOfGroup)
