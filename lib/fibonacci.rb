class Fibonacci
  attr_accessor :fib_array

  def initialize
    @fib_array = [0,1]
  end

  def add_last_two (array)
    array[-1] + array[-2]
  end

  def push_next(array)
    array << add_last_two(array)
  end

  def seq_build(max)
    while add_last_two(@fib_array) <= max do
      push_next(@fib_array)
    end
    @fib_array
  end

  def seperate_even(arr)
    i = 0
    even_arr = []
    while i < arr.length do
      if (arr[i]%2).zero?
        even_arr << arr[i]
      end
      i+=1
    end
    even_arr
  end

  def sum_array(array)
    array.sum
  end

  def sum_fibonacci_fourmil
    sum_array(seperate_even(seq_build(4000000)))
  end
end
