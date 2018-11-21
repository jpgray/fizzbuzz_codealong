class FizzBuzz
  attr_accessor :fizzbuzz_array

  def initialize
    @fizzbuzz_array = []
  end

  # divisible by 3
  # returns boolean if ^^
  def divisible_by_three?(num)
    (num % 3).zero?
  end

  # divisible by 5
  # returns boolean if ^^
  def divisible_by_five?(num)
    (num % 5).zero?
  end

  def divisible_by_?(num, by)
    (num % by).zero?
  end


  # fizzBuzz range iterator
  # set fizzbuzz_aray to given range with correct numbers or fizzbuzz combo
  def fizzbuzz_iterator(range_from, range_to)
    (range_from..range_to).each do |i|
      if divisible_by_?(i,3) and divisible_by_?(i,5)
        @fizzbuzz_array << 'fizzbuzz'
      elsif divisible_by_?(i,3)
        @fizzbuzz_array << 'fizz'
      elsif divisible_by_?(i,5)
        @fizzbuzz_array << 'buzz'
      else
        @fizzbuzz_array << i
      end
    end
  end
end
