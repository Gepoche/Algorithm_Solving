let input = readLine()!.split(separator: " ").map{Int(String($0))!} //https://www.acmicpc.net/problem/1712

let fixedExp = input[0]
let pricePerPro = input[1]
let pricePerSell = input[2]

var quantity = 0

if pricePerPro >= pricePerSell {
  quantity = -1
} else {
  quantity = fixedExp / (pricePerSell-pricePerPro) + 1
}


print(quantity)
