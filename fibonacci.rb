# Given a number, returns that many members of the fibonacci sequence
# This is solved iteratively
def fibs(n)
  return [] if n == 0
  return [1] if n == 1
  result = [1,1]
  (n - 2).times { result << result[-2] + result[-1] }
  result
end

# Test cases for fibs
# puts fibs(5) == [1,1,2,3,5]
# puts fibs(0) == []
# puts fibs(2) == [1,1]
# puts fibs(10) == [1,1,2,3,5,8,13,21,34,55]


# Given a number, returns that many members of the fibonacci sequence
# This is solved recursively
def fibs_rec(n, result=[1,1])
  return [] if n == 0
  return result[0] if n == 1
  return result if n == 2
  result << result[-1] + result[-2]
  fibs_rec(n-1, result)
end

# Test cases for fibs_rec
# puts fibs_rec(5) == [1,1,2,3,5]
# puts fibs_rec(0) == []
# puts fibs_rec(2) == [1,1]
# puts fibs_rec(10) == [1,1,2,3,5,8,13,21,34,55]