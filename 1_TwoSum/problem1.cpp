#include <vector>
#include <unordered_map>
#include <iostream>

class Solution {
public:
    std::vector<int> twoSum(std::vector<int>& nums, int target) {
        std::unordered_map<int, int> cache;
        int i = 0;
        for (int num : nums){
            if(cache.count(target - num)){
                return std::vector<int>{cache[target - num], i};
            }
            cache[num] = i;
            i++;
        }
        return std::vector<int>{};    
    }
};

/*
int main(int argc, char const *argv[]){
    Solution sol;
    std::vector<int> ans = sol.twoSum({2, 7, 11, 15}, 9);

    for (int n : ans){
        std::cout << n << ' ';
    }
    
    return 0;
}
*/
