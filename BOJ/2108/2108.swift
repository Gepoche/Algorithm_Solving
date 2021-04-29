import Foundation //https://www.acmicpc.net/problem/2108

final class FileIO { //FileIO by Rhyno
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }
}

let fIO = FileIO()

let numOfNum = fIO.readInt()

var input: [Int] = []

var inputCounter = [Int](repeating: 0, count: 8001)
var inputSorted: [Int] = []

for _ in 0..<numOfNum {
  let read = fIO.readInt()
  input.append(read)
  inputCounter[read+4000] += 1
}

for i in 0..<8001 {
  for _ in 0..<inputCounter[i] {
    inputSorted.append(i-4000)
  }
}

print(Int(round(Double(inputSorted.reduce(0, {$0+$1})) / Double(numOfNum))))

print(inputSorted[numOfNum/2])

var numsThatAreMany: [Int] = []
let mostNum = inputCounter.max()!
for i in 0..<8001 {
  if inputCounter[i] == mostNum {
    numsThatAreMany.append(i-4000)
  }
}

if numsThatAreMany.count > 1 {
  print(numsThatAreMany[1])
} else {
  print(numsThatAreMany[0])
}

print(inputSorted[inputSorted.count-1] - inputSorted[0])
