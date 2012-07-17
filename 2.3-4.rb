# recursive insertion sort

def insertion_sort(arr, p, r)
  if p < r
    insertion_sort(arr, p, r - 1)
    insert(arr, r)
  else
    [arr[p]]
  end
end

def insert(arr, item_pos)
  key = arr[item_pos - 1]
  i = item_pos - 2
  while i >= 0 && arr[i] > key
    arr[i + 1] = arr[i]
    i -= 1
  end

  arr[i + 1] = key
end

a = [5, 1, 55, 3, 111, 65, 77, 44, 3]
p a
insertion_sort(a, 1, a.length)
p a
