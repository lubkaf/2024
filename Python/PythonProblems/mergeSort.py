import random


def main():

    n = int(input("set length of list: "))
    t = []
    for i in range(0, n):
        t.append(random.randint(0, 100))
    print(t)
    mergeSort(t, 0, len(t) - 1)
    print(t)





def mergeSort(array, leftIndex, rightIndex):
    if leftIndex < rightIndex:
        middleIndex = (leftIndex + rightIndex) // 2
        mergeSort(array, leftIndex, middleIndex)
        mergeSort(array, middleIndex+1, rightIndex)
        merge(array, leftIndex, middleIndex, rightIndex)


def merge(array, leftIndex, middleIndex, rightIndex):
    dup_array = []
    pointer1 = leftIndex
    pointer2 = middleIndex + 1

    while pointer1 <= middleIndex and pointer2 <= rightIndex:
        if array[pointer1] <= array[pointer2]:
            dup_array.append(array[pointer1])
            pointer1 += 1
        else:
            dup_array.append(array[pointer2])
            pointer2 += 1

    while pointer1 <= middleIndex:
        dup_array.append(array[pointer1])
        pointer1 += 1

    for i in range(len(dup_array)):
        array[leftIndex+i] = dup_array[i]



main()