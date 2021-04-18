let arr = readLine()!.split(separator: " ").map{Int($0)!} //https://www.acmicpc.net/problem/1330

if arr[0] > arr[1] {
  print(">")
} else if arr[0] < arr[1] {
  print("<")
} else {
  print("==")
}
