# iteration
def fibs(n)
  fib_nums = [0, 1]
  prev = 0
  curr = 1
  return fib_nums if n == 1

  for i in (2...n)
    fib = curr + prev
    fib_nums << fib
    prev = curr
    curr = fib
  end
  p fib_nums
end
