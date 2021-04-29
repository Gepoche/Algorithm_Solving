from collections import deque #https://www.acmicpc.net/problem/1697

n, k = map(int, input().split())
visit = [False for _ in range(100001)]
dx = [-1, 1, 2]

queue = deque()
queue.append((n, 0))
visit[n] = True
solutions = []

while queue:
    x, depth = queue.popleft()
    if x == k:
        print(depth)
        break

    for i in range(3):
        if i == 2:
            nx = x * dx[i]
        else:
            nx = x + dx[i]

        if 0 <= nx <= 100000 and visit[nx] == False:
            visit[nx] = True
            queue.append((nx, depth+1))
