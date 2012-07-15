# insertion sort

arr = [2, 2, 6, 33, 12, 5, 121, 2]

(1..arr.length - 1).each do |j|
  key = arr[j]
  i = j - 1

  while i >= 0 && arr[i] < key
    arr[i+1] = arr[i]
    i = i - 1
  end

  arr[i + 1] = key
end

p arr
