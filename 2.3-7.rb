# given a set S of n integers and another integer x, determines
# whether or not there exist two elements in S whose sum is exactly x.

def sum_exists?(arr, sum, p, q)
  if p < q
    (p - 1..q - 2).each do |i|
      return true if arr[i] + arr[i + 1] == sum
    end

    sum_exists?(arr, sum, p + 1, q)
  end

  return false
end


a = [3, 2, 3, 4, 5]
p sum_exists?(a, 9, 1, a.length) == true
p sum_exists?(a, 4, 1, a.length) == false
