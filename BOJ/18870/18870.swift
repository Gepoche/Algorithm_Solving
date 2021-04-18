import Foundation //https://www.acmicpc.net/problem/18870

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

let n = fIO.readInt()
var arr: [Int] = []
for _ in 0..<n {
  arr.append(fIO.readInt())
}
let setArr = Array(Set(arr)).sorted()
var dict: [String : Int] = [:]
var output = ""

for i in 0..<setArr.count {
  dict.updateValue(i, forKey: "\(setArr[i])")
}

for i in arr {
  output += String(dict["\(i)"]!) + " "
}
print(output)
