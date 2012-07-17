# add two binary numbers represented as arrays

def binary_add(a, b)
  return nil if a.length != b.length || a.length == 0

  c = []
  carry = 0
  for i in (0..a.length-1).to_a.reverse
    current_addition = a[i] + b[i]
    if carry > 0
      current_addition += carry
      carry = 0
    end

    current_out = 0
    case current_addition
    when 1
      current_out = 1
    when 2
      carry = 1
    when 3
      current_out = 1
      carry = 1
    end

    c.unshift current_out
  end

  c.unshift carry
  c
end

a =    [0, 1, 1, 0, 1, 1, 1, 0]
b =    [1, 0, 1, 0, 1, 1, 0, 0]
c = [1, 0, 0, 0, 1, 1, 0, 1, 0]
p binary_add(a, b) == c

a =    [0, 1, 1, 0, 1]
b =    [1, 0, 1, 1, 1]
c = [1, 0, 0, 1, 0, 0]
p binary_add(a, b) == c
