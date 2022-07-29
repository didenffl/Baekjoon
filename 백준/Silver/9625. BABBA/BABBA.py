import sys 
input = sys.stdin.readline 

A = [1, 0]
B = [0, 1]
n = int(input())
for i in range(n):
    A.append(A[-1]+A[-2])
    B.append(B[-1]+B[-2])
print(A[n], B[n])