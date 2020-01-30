# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  x = 0
  arr.each {|e| x += e}
  x
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end

  if arr.length == 1
    return arr[0]
  end

  arr = arr.sort.reverse

  arr[0] + arr[1]
end

def sum_to_n? arr, n
  s = Set.new
  arr.each do |x|
    if s.include?(n - x)
      return true
    end
    s.add(x)
  end

  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  s.split('').each do |i|
    puts i
    if i != "0" && i != "1"
      return false
    end
  end

  if s == "0"
    return true
  end

  s =~ /^[10]*00$/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == ""
      raise(ArgumentError)
    end

    if price <= 0
      raise(ArgumentError)
    end

    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    s = "$#{@price.to_i}."+"#{(@price % 1.0)}"[2..3]
    if s.split('.')[1].length == 1
      s += '0'
    end
    s
  end

end
