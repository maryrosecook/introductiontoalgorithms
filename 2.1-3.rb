# get item index in array, or return nil if does not exist

# loop invariant: items 0 to i are not the item being sought

def find(arr, item)
  i = 0
  item_index = nil
  while item_index.nil? && i < arr.length
    if arr[i] == item
      item_index = i
    end

    i += 1
  end

  item_index
end

arr = [2, 5, 23, 66, 234, 55]
p find(arr, 2) == 0
p find(arr, 66) == 3
p find(arr, 55) == 5
p find(arr, 454) == nil
