let nth = Int(readLine()!)! //https://www.acmicpc.net/problem/1436
var run = 0
var num = 666
var result = 0

while run < nth {
  var temp = num
  while temp >= 100 {
    if temp%10 == 6 {
      temp /= 10
      if temp%10 == 6 {
        temp /= 10
        if temp%10 == 6 {
          temp /= 10
          run += 1
          result = num
        }
      }
    }
    temp /= 10
  }
  num += 1
}

print(result)
