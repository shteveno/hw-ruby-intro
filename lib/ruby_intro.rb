# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  ret = 0
  arr.each {|x| ret += x}
  return ret
end

def max_2_sum arr
  # YOUR CODE HERE
  ret = 0
  arr.max(2).each {|x| ret += x}
  return ret
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  combos = arr.combination(2)
  found = false
  combos.each {|x| found = (found or (n==(x[0]+x[1]))) }
  return found
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " << name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /^[bcdfghjklmnpqrstvwxyz]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return (s =~ /^[0-1]+$/) && ((s.to_i % 4) == 0)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if (isbn=='' or price <=0)
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end 

  def isbn
    @isbn
  end

  def isbn=(string)
    if isbn==''
      raise ArgumentError
    end
    @isbn = string
  end

  def price
    @price
  end

  def price=(float)
    if float <= 0
      raise ArgumentError
    end
    @price = float
  end

  def price_as_string
    return '$' + '%.2f' % @price
  end
end
