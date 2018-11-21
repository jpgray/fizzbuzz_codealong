describe "Fibonacci" do
  before (:all) do
    @fib = Fibonacci.new
  end

  it "should correctly add the two last numbers in an array" do
    @farray = [1,2,3,4]
    expect(@fib.add_last_two(@farray)).to eq 7
  end

  it "should correctly add the next number to the sequence array" do
    @farray = [1,2,3,4]
    expect(@fib.push_next(@farray)).to eq [1,2,3,4,7]
  end

  it "should correctly build a fibonacci sequence of given max number" do
    expect(@fib.seq_build(5)).to eq [0,1,1,2,3,5]
    expect(@fib.seq_build(10).length).to eq 7
  end

  it "should correctly create a new array of even numbers from a given array" do
    @arr = [5,7,8,9,10,12]
    expect(@fib.seperate_even(@arr)).to eq [8,10,12]
  end

  it "should correctly sum a given array" do
    expect(@fib.sum_array([1,2,3,4,5])).to eq 15
  end

  it "should correctly sum the array of even fibonacci numbers up to 4 million" do
    expect(@fib.sum_fibonacci_fourmil).to eq 123123
  end
end
