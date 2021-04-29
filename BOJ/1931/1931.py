n = int(input()) #https://www.acmicpc.net/problem/1931
arr = []
for _ in range(n):
    arr.append(list(map(int, input().split())))

arr.sort(key=lambda x: (x[1], x[0]))

output = []
output.append(arr[0])
for i in range(1, len(arr)):
    if arr[i][0] < output[len(output)-1][1]:
        continue
    output.append(arr[i])

print(len(output))
