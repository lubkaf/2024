# Checking if sum of 2 indexes are equal to target
# returns names of indexes

def two_sum(nums, target):
    num_dict = dict([])
    for index, num in enumerate(nums):
        diff = target - num

        if diff in num_dict:
            return [num_dict[diff], index]
        else:
            num_dict[num] = index


# Testy
nums1 = [7, 2, 11, 15, 3, 6]
target1 = 9
print(two_sum(nums1, target1))  # Output: [0, 1]

nums2 = [3, 2, 4]
target2 = 6
print(two_sum(nums2, target2))  # Output: [1, 2]

nums3 = [3, 3]
target3 = 6
print(two_sum(nums3, target3))  # Output: [0, 1]
