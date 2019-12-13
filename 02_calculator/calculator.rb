def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  arr.reduce(0, :+)
end

def multiply(*args)
  args.reduce(1, :*)
end

def power(a, b)
  a ** b
end

def factorial(a)
  (1..a).reduce(1, :*)
end
