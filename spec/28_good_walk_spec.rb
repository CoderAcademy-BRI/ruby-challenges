require_relative '../28_good_walk.rb'

describe "good walk" do
  it "should return true for a simple good walk" do
    expect(good_walk(['n','s','e','w','n','s','e','w','n','s'])).to eq(true)
  end
  it "should return true for a complicated good walk" do
    expect(good_walk(['n','n','s','s','e','w','e','w','n','s'])).to eq(true)
  end
end

describe "bad walk" do
  it "should return false if less than 10 blocks/minutes" do
    expect(good_walk(['n','s','e','w','n','s','e','w'])).to eq(false)
  end
  it "should return false if empty argument" do
    expect(good_walk([])).to eq(false)
  end
  it "should return false if 10 blocks but doesn't take us back to start" do
        expect(good_walk(['n','n','n','s','e','w','e','w','n','s'])).to eq(false)
  end
end