def Fibonacci(n)
    cache = {}
    l = lambda do |n|
      return   if n < 0
      return n if n < 2
      cache[n] ||= l[n - 1] + l[n - 2]
    end
    l.call(n)
  end
