func countLetter(letter: String, from: String) -> Int { //https://www.acmicpc.net/problem/1157
  let strArr = from.uppercased().map{String($0)}
  var cnt = 0
  for i in 0..<strArr.count {
    if strArr[i] == letter {
      cnt += 1
    }
  }
  return cnt
}

let str = readLine()!
var numberOfLetters = [Int](repeating: 0, count: 26)

for i in 0..<26 {
  numberOfLetters[i] = countLetter(letter: String(UnicodeScalar(UInt8(i+65))), from: str)
}

if numberOfLetters.firstIndex(of: numberOfLetters.max()!)! == numberOfLetters.lastIndex(of: numberOfLetters.max()!)! {
  print(String(UnicodeScalar(UInt8(numberOfLetters.firstIndex(of:numberOfLetters.max()!)! + 65))))
} else {
  print("?")
}
