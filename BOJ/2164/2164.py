from collections import deque #https://www.acmicpc.net/problem/2164

n = int(input())

queue = deque(i for i in range(1, n+1))

while len(queue) > 1:
    # 맨 위 버리기
    queue.popleft()

    # 위 뽑아서 밑에다넣기
    queue.append(queue.popleft())

print(queue[0])
