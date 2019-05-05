require_relative '../41_number_pyramid'

describe "should return 0 for empty arg" do
  it "should return 0 when called with []" do
    expect(reduce_pyramid([])).to eq(0)
  end
end

describe "should return same value for single value array" do
  it "should return 1 for [1]" do
    expect(reduce_pyramid([1])).to eq(1)
  end
end

describe "should return sum for two element array" do
  it "should return 1 for [4,6]" do
    expect(reduce_pyramid([4,6])).to eq(10)
  end
  it "should return 3 for [4,-1]" do
    expect(reduce_pyramid([4,-1])).to eq(3)
  end
end

describe "should return correct reduction for 3 element array" do
  it "should return 25 for [3,9,4]" do
    expect(reduce_pyramid([3,9,4])).to eq(25)
  end
  it "should return 19 for [-3,9,4]" do
    expect(reduce_pyramid([-3,9,4])).to eq(19)
  end
  it "should return 20 for [1,2,3,4]" do
    expect(reduce_pyramid([1,2,3,4])).to eq(20)
  end
end
