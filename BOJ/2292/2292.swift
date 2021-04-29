var destiniation = Int(readLine()!)! //https://www.acmicpc.net/problem/2292
var distancePerLane = 6
var travel = 1

if destiniation == 1 {
  destiniation = 0
}

destiniation -= 1

while destiniation > 0 {
  destiniation -= distancePerLane
  distancePerLane += 6
  travel += 1
}

print(travel)
