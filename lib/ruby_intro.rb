# When done, submit this entire file to the autograder.

# Part 1

# Sums all numbers in array. Returns 0 if empty.
def sum arr
  x = 0
  
  arr.each do |arr_value|
    x = x + arr_value
  end
  
  return x
end



# Sums two largest values in array
def max_2_sum arr
  # Returns 0 if empty
  if arr.length == 0
    return 0
  end
  
  # If array only has one value, returns that value
  if arr.length == 1
    return arr[0]
  end
  
  largest = -1000000000000000000
  second = -1000000000000000000
  
  # Sets largest and second to largest and second
  # largest values, respectively
  arr.each do |i|
    if i > second
      if i > largest
        second = largest
        largest = i
      else
        second = i
      end
    end
  end
  
  return largest + second
end



def sum_to_n? arr, n
  # Returns 0 if empty or of length 1
  if arr.length == 0 || arr.length == 1 
    return false
  end
  
 arr.each do |i|
    arr.each do |j|
      if i + j == n && i != j
        return true
      end
    end
  end
  
  return false
end

# Part 2

# Returns "Hello, <Input Name>"
def hello(name)
  return "Hello, " + name
end

# Returns true if string starts with consonant.
# Returns false otherwise.
def starts_with_consonant? s
  if /[^a-zA-Z]/  =~ s
    return false
  end
  
  # Returns false if s is an empty string
  if s.length == 0
    return false
  end
  
  # Returns false if s starts with any consonants
  if s.start_with?("A","a","E","e","I","i","O","o","U","u")
    return false
  end
  
  return true
end

def binary_multiple_of_4? s
  # returns false if input is not binary
  if s.count("0") + s.count("1") != s.length || s.length == 0
    return false
  end
  
  # Calculates value of binary input
  sum = 0
  1.upto(s.length) do |i|
    if s[i] == "1"
      sum = sum + 1
    end
    sum = 2 * sum
  end
  sum = sum / 2
    
  # Returns true if it is a multiple of 4, false otherwise
  if(sum % 4 == 0)
    return true
  else
    return false
  end
end

# Part 3
class BookInStock
  def initialize i, p
    if i.empty?
      raise ArgumentError.new("isbn cannot be empty")
    end
    if p <= 0
      raise ArgumentError.new("price cannot be set to 0")
    end
    
    @isbn = i
    @price = p
  end
  
  # Getter methods
  def isbn
    @isbn
  end
  def price
    @price
  end
  
  # Setter Methods
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  def price=(new_price)
    @price = new_price
  end
  
  # Returns price formatted with $ and two decimal places
  def price_as_string
    return "$" + '%.2f' % @price 
  end
end
