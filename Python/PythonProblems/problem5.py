# Top frequent elements in lists
# returns k most frequent elements in list

def freq(list, k):
    freq_dict = {}
    for value in list:
        if value in freq_dict:
            freq_dict[value] += 1
        else:
            freq_dict[value] = 1
    return sorted(freq_dict.values(), reverse=True)[:k]




list1 = [1,1,1,2, 2, 1, 3, 4, 5, 6, 7, 8, 9, 10]

print(freq(list1, 3))



