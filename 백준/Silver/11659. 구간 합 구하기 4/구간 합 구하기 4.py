import sys 
input = sys.stdin.readline 

n, m = map(int, input().split())
lst = list(map(int, input().split()))
sum = [lst[0]]
for i in range(1,n):
    sum.append(sum[-1] + lst[i])
for l in range(m):
    i, j = map(int, input().split())
    if i == 1:
        print(sum[j-1])
    else:
        print(sum[j-1]-sum[i-2])