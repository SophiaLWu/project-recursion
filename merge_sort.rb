# Given an array, returns the sorted array using the merge sort algorithm
def merge_sort(arr)
  return arr if arr.length <= 1
  middle = arr.length/2
  left = arr[0...middle]
  right = arr[middle..-1]
  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)
  merge(sorted_left, sorted_right)
end

# Given two sorted arrays, returns a merged, sorted array with all elements
# from both provided arrays
def merge(arr1, arr2)
  merged = []
  until arr1.empty? || arr2.empty?
    if arr1.first <= arr2.first
      merged << arr1.shift
    else
      merged << arr2.shift
    end
  end
  merged + arr1 + arr2
end

# TESTS #

# Tests for merge
puts merge([1,4,6],[2,6,7]) == [1,2,4,6,6,7]
puts merge([1,2,3],[4,5,6]) == [1,2,3,4,5,6]
puts merge([-5,10,50],[0,40,49,100]) == [-5,0,10,40,49,50,100]

# Tests for merge_sort
puts merge_sort([1,1,1,1]) == [1,1,1,1]
puts merge_sort([1,2,3,4,5]) == [1,2,3,4,5]
puts merge_sort([1,10,2,3,11,15,19]) == [1,2,3,10,11,15,19]
puts merge_sort([10,-50,-40,13,2,19,19,3]) == [-50,-40,2,3,10,13,19,19]