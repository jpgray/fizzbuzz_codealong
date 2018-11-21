describe "Euler1" do
  before (:each) do
    @euler1 = Euler1.new
  end

  it "should check whether a number is divisible by another" do
    expect(@euler1.divisible_by?(6,3)).to be true
    expect(@euler1.divisible_by?(20,5)).to be true
    expect(@euler1.divisible_by?(6,5)).to be false
    expect(@euler1.divisible_by?(20,3)).to be false
  end

  it "should create an array of numbers that are divisble by three or five" do
    @euler1.create_array(1,10)

    expect(@euler1.euler1_array.length).to eq 5
    expect(@euler1.euler1_array[0]).to eq 3
    expect(@euler1.euler1_array[1]).to eq 5
  end

  it "should correctly sum a given array" do
    expect(@euler1.sum_array([1,2,3,4,5])).to eq 15
  end

  it "should correctly return the sum of numbers divisible by three and five between 1 and 1000" do
    expect(@euler1.full_euler1_sum).to eq 233168
  end
end
