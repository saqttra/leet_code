# frozen_string_literal: true

=begin
  First attempt:
    - Unnecessary double loop. Can be done in a single pass.
    - Can't handle repeated values in the array, e.g. [3, 3], target = 6

  def two_sum(nums, target)
    localizer = {}

    nums.each_with_index do |x, index|
      localizer[x] = index
    end

    nums.each do |x|
      return [localizer[x], localizer[target - x]] if localizer.key?(target - x)
    end
  end

  Instead of storing ALL values from the array in the hash with their index,
  I should've stored the value only the first time it is encountered.
  This prevents overwriting previous entries when there are duplicates,
  which could cause issues when looking for pairs.
=end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  cache = {}
  nums.each_with_index do |n, i|
    return [cache[target - n], i] if cache.key?(target - n)

    cache[n] = i
  end
end
