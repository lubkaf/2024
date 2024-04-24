#   returns product of all list elements except self

def productExceptSelf(nums):
    answer = []
    for num in nums:
        ans = 1
        for num2 in nums:
           if num2 != num:
                ans *= num2
        answer.append(ans)
    return answer


list1 = [1,2,3,4]
nums = [-1,1,0,-3,3]
print(productExceptSelf(list1))
print(productExceptSelf(nums))