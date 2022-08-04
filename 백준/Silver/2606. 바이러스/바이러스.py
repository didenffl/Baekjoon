from collections import deque
import sys 
input = sys.stdin.readline 

n = int(input())
m = int(input())
visit = [0]*(n+1)
grh = [[] for _ in range(n+1)]
for _ in range(m):
    a, b = map(int, input().split())
    grh[a].append(b)
    grh[b].append(a)

cnt = 0
def find(a):
    visit[a] = 1
    global cnt
    for i in grh[a]:
        if visit[i] == 0:
            find(i)
            cnt += 1 
find(1)
print(cnt)
