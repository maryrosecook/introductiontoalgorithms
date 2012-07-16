# merge sort

def merge_sort(arr, p, r)
  if p < r
    q = ((p + r) / 2).floor
    merge_sort(arr, p, q)
    merge_sort(arr, q + 1, r)
    merge(arr, p, q, r)
  end

  arr
end

def extract(arr, start, finish)
  (start..finish).reduce([]) {|coll, i| coll.push(arr[i - 1]) }
end

def merge(arr, p, q, r)
  a = extract(arr, p, q)
  b = extract(arr, q + 1, r)

  (p..r).each do |i|
    arr[i - 1] = if a.length == 0
                   b.shift
                 elsif b.length == 0
                   a.shift
                 elsif a[0] <= b[0]
                   a.shift
                 elsif a[0] > b[0]
                   b.shift
                 end
  end
end



a = [20, 3, 1, 8, 2, 7, 5, 6, 4, 20]
p a
merge_sort(a, 1, 10)
p a
