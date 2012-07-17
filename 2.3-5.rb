# binary search

def find(arr, item, p, r)
  middle_i = ((p + r) / 2).floor
  middle_item = arr[middle_i]

  if item == middle_item
    return middle_i
  elsif p < r
    return find(arr, item, p, middle_i) if item < middle_item
    return find(arr, item, middle_i + 1, r) if item > middle_item
  end
end

a = [1,3,7,9,20,23,27,30,40] # sorted
p find(a, 40, 1, a.length) == 8
