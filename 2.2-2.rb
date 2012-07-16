# selection sort

# invariant: at the start of each for loop iteration through i, the subarray 0 to i is sorted.

# worst case: O(n^2)
# average case: O(n^2) because have to traverse average of half array for each i
# best case: O(n)

def selection_sort(arr)
  for i in (0..arr.length - 2)
    smallest_index = i
    for j in (i + 1..arr.length - 1)
      if arr[j] < arr[smallest_index]
        smallest_index = j
      end
    end

    previous_i_value = arr[i]
    arr[i] = arr[smallest_index]
    arr[smallest_index] = previous_i_value
  end

  arr
end

a = [3, 2, 1, 5, 4]
p selection_sort(a) == a.sort
