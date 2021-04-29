let n = Int(readLine()!)! //https://www.acmicpc.net/problem/2231
var has = false

for i in 1...n {
  let iMappedReduce = String(i).map{Int(String($0))!}.reduce(0, {$0 + $1})
  
  if i + iMappedReduce == n {
    print(i)
    has.toggle()
    break
  }
}

if !has {
  print("0")
}
