class Euler1
  #array set up here
  attr_accessor :euler1_array

  def initialize
    @euler1_array = []
  end

  #checks divisible by another numbers
  def divisible_by?(num, by)
    (num % by).zero?
  end

  #loop to push applicable numbers to array
  def create_array(startNum, untilNum)
    i = startNum
    while i <= untilNum
      if divisible_by?(i,3) or divisible_by?(i,5)
        @euler1_array << i
      end
      i+=1
    end
  end

  #array sum
  def sum_array(array)
    array.sum
  end

  def full_euler1_sum
    create_array(1,999)
    sum_array(@euler1_array)
  end
end
