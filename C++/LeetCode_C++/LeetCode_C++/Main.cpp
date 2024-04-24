#include <iostream>
#include <vector>
#include <unordered_map>
#include <algorithm>
using namespace std;

class Problems {
public:
	vector<int> twoSum(vector<int> nums, int target)
	{
		int n = nums.size();
		unordered_map<int, int> numMap;
		for (int i = 0; i < n; i++)
		{
			int szukane = target - nums[i];
			if (numMap.count(szukane))
				return { numMap[szukane], i };
			numMap[nums[i]] = i;
		}
		return{ -1, -1 };
	}


	
	

	double findMedianSortedArrays(vector<int>& nums1, vector<int>& nums2)
	{
		vector<int>mergedArrays;

		for (auto num : nums1)
		{
			mergedArrays.push_back(num);
		}
		for (auto num : nums2)
		{
			mergedArrays.push_back(num);
		}

		sort(mergedArrays.begin(), mergedArrays.end());

		int n = mergedArrays.size();
		if (n % 2 == 0)
		{
			return  ((n / 2) + (n / 2 - 1)) / 2.0 ;
		}
		else
		{
			return (n / 2);
		}
		return -1;

	}



};


int main()
{
	/*vector<int>nums1 = { 0,1,3,4,5,6 };
	vector<int>nums2 = { 2 };
	int target = 15;

	Problems problem;

	double result = problem.findMedianSortedArrays(nums1, nums2);
	cout << result;*/

	int a = 1;
	int b = a;

	bool d = true;
	cout << d << endl;
	cout << "a: " << a << ", b: " << b;
	return 0;
}