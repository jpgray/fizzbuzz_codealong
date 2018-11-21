describe "FizzBuzz" do
  before(:all) do
    @fb = FizzBuzz.new
  end

  it "should respond true if the number is divisible by any other number" do
    expect(@fb.divisible_by_?(10,5)).to be true
    expect(@fb.divisible_by_?(9,3)).to be true
  end

  it "should respond false if the number is not divisible by any other number" do
    expect(@fb.divisible_by_?(9,5)).to be false
    expect(@fb.divisible_by_?(19,3)).to be false
  end

  it "should correctly apply fizzbuzz to given range" do
    @fb.fizzbuzz_iterator(1,15)

    expect(@fb.fizzbuzz_array[0]).to eq 1
    expect(@fb.fizzbuzz_array[-1]).to eq "fizzbuzz"
    expect(@fb.fizzbuzz_array[2]).to eq "fizz"
    expect(@fb.fizzbuzz_array[4]).to eq "buzz"
    expect(@fb.fizzbuzz_array.length).to eq 15


  end
end
