// Largest_Number.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <string>

using namespace std;

string Largest_number(int nums[], int length);

int main()
{
	int nums[5] = { 1,2,5,4,3 };

	cout<<Largest_number(nums, 5);
	
	
	
	


}

string Largest_number(int nums[], int length) {
	
	for (int i = 0; i < length - 1; i++) 
	{
		for (int j = 1; j < length - i; j++) 
		{
			if (nums[j - 1] < nums[j])
			{
				int x = nums[j - 1];
				nums[j - 1] = nums[j];
				nums[j] = x;
			}
		}
	}
	string result = "";
	for (int i = 0; i < length; i++)
	{
		result += to_string(nums[i]);
	}
	return result;


}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
