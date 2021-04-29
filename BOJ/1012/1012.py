import sys #https://www.acmicpc.net/problem/1012
sys.setrecursionlimit(10**4)

dx = [-1, 1, 0, 0]
dy = [0, 0, -1, 1]

def dfs(graph, x, y):
    global count
    graph[x][y] = 0
    count += 1
    for i in range(4):
        nx = x + dx[i]
        ny = y + dy[i]
        if nx < 0 or ny < 0 or nx >= n or ny >= m:
            continue
        if graph[nx][ny] == 1:
            dfs(graph, nx, ny)

t = int(input())

for case in range(t):
    m, n, k = map(int, input().split())
    arr = []

    graph = [[0]*m for _ in range(n)]

    for _ in range(k):
        x, y = map(int, input().split())
        graph[y][x] = 1

    for i in range(n):
        for j in range(m):
            if graph[i][j] == 1:
                count = 0
                dfs(graph, i, j)
                arr.append(count)

    print(len(arr))
