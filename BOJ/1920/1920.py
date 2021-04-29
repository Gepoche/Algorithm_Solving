n = int(input()) #https://www.acmicpc.net/problem/1920
arr1 = list(map(int, input().split()))
m = int(input())
arr2 = list(map(int, input().split()))
arr1.sort()

def bin_search(arr, target, start, end):
    mid = (start + end) // 2
    if start > end:
        return -1
    if arr[mid] == target:
        return mid
    elif arr[mid] < target:
        start = mid + 1
    else:
        end = mid - 1
    return bin_search(arr, target, start, end)

for i in arr2:
    if bin_search(arr1, i, 0, n-1) != -1:
        print(1)
    else:
        print(0)
