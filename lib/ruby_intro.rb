# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.sort.last(2).sum
end

def sum_to_n? arr, n
  combos = arr.uniq.combination(2)
  !!combos.detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
 !!/^[^aeiou\W]/i.match(s) 
end

def binary_multiple_of_4? s
    if s == "0" 
        return true
    end
   !!/^[01]*(00)$/.match(s) 
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price
    
    def initialize(isbn, price)
        raise ArgumentError if isbn.empty?
        raise ArgumentError if price <=0

        @isbn = isbn
        @price = price
    end
    
    def price_as_string()
        format("$%.2f", @price)
    end
end
