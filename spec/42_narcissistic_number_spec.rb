require_relative "../42_narcissistic_number"

describe "should return false when not a narcissistic number" do
  it "should return false for 12" do
    expect(narcissistic_number?(12)).to eq(false)
  end
  it "should return false for 123" do
    expect(narcissistic_number?(123)).to eq(false)
  end
end

describe "should return true when is a narcissistic number" do
  it "should return true for 153" do
    expect(narcissistic_number?(153)).to eq(true)
  end
  it "should return true for 1634" do
    expect(narcissistic_number?(1634)).to eq(true)
  end
end