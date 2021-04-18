let numOfCases = Int(readLine()!)! //Fly me to the Alpha Centauri https://www.acmicpc.net/problem/1011

for _ in 1...numOfCases {
  let input = readLine()!.split(separator: " ").map{Int($0)!}

  let x = input[0]
  let y = input[1]

  let distance = y - x

  var numWarp = 0
  var weight = 0
  var distanceWarp = 0

  while distanceWarp < distance {
    weight += 1
    for _ in 1...2 {
      numWarp += 1
      distanceWarp += weight
      if distanceWarp >= distance {
        break
      }
    }
  }

  print(numWarp)
}

/*
  턴당 이동가능한 거리가 1씩증가
  1 2 33 44 555 666 7777 8888 99999 1010101010
*/
