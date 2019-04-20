require_relative '../36_binary_flip'

describe "should return 0 when s is all zeros" do
    it "should return 0 when s is '0000'" do
        expect(bin_flip("0000")).to eq(0)
    end
    it "should return 0 for an empty string" do
        expect(bin_flip("")).to eq(0)
    end
end

describe "should return 1 when one step" do
    it "should return 1 when s is '0001'" do
        expect(bin_flip("0001")).to eq(1)
    end
    it "should return 1 when s is '1111'" do
        expect(bin_flip("1111")).to eq(1)
    end
end

describe "should return 2 when two steps" do
    it "should return 2 when s is '0010'" do
        expect(bin_flip("0010")).to eq(2)
    end
    it "should return 2 when s is '1110'" do
        expect(bin_flip("1110")).to eq(2)
    end
end

describe "should return 3 when three steps" do
    it "should return 3 when s is '0101'" do
        expect(bin_flip("0101")).to eq(3)
    end
    it "should return 3 when s is '1101'" do
        expect(bin_flip("1101")).to eq(3)
    end
end

describe "should return 4 when four steps" do
    it "should return 4 when s is '1000100'" do
        expect(bin_flip("1000100")).to eq(4)
    end
end