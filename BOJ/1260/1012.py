from collections import deque #https://www.acmicpc.net/problem/1260

def dfs(graph, v, visit):
    visit[v] = True
    print(v, end=' ')
    for i in graph[v]:
        if not visit[i]:
            dfs(graph, i, visit)

def bfs(graph, v, visit):
    queue = deque([v])
    visit[v] = True
    while queue:
        a = queue.popleft()
        print(a, end=' ')
        for i in graph[a]:
            if not visit[i]:
                queue.append(i)
                visit[i] = True


n, m, v = map(int, input().split())
graph = [[] * (n+1) for _ in range(n+1)]
visit = [False for _ in range(n+1)]

for _ in range(m):
    a, b = map(int, input().split())
    graph[a].append(b)
    graph[b].append(a)

for i in range(n+1):
    graph[i].sort()

dfs(graph, v, visit)
visit = [False for _ in range(n+1)]
print()
bfs(graph, v, visit)
