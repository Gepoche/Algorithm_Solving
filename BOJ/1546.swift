_ = readLine() //https://www.acmicpc.net/problem/1546
let score = readLine()!.split(separator: " ").map{Double(String($0))!}
var newScore: [Double] = []

for i in 0..<score.count {
  newScore.insert(score[i]/score.max()!*100, at: i)  
}

print(newScore.reduce(0, {$0 + $1}) / Double(newScore.count))
