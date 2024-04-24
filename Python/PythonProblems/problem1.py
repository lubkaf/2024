# FINDING DUPLICATE IN LIST:
# true if there are duplicates
# false if not

def problem1(nums):
    highest_value = max(nums)
    t = []
    for i in range(highest_value + 1):
        t.append(0)
    for num in nums:
        t[num] += 1
    for i in t:
        if i > 1: return True
    return False


def problem1_efficient(nums):
    nums.sort()
    for num in range (1,len(nums),1):
        if nums[num] == nums[num-1]:
            return True
    return False


nums = [0, 0, 1, 2, 3, 4, 5, 6, 15]

print(problem1_efficient(nums))


