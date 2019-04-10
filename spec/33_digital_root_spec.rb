require_relative '../33_digital_root'

describe "should return -1 for negative arguments" do
    it "should return -1 for -123" do
        expect(digital_root(-123)).to eq(-1)
    end
end
describe "should return the digital root for positive numbers" do
    it "should return the same number for single digit numbers" do
        expect(digital_root(4)).to eq(4)
    end
    it "should return the sum of the digits when the sum is a single digit" do
        expect(digital_root(234)).to eq(9)
    end
    it "should return 8 for 89" do
        expect(digital_root(89)).to eq(8)
    end
    it "should return 7 for 65536" do
        expect(digital_root(65536)).to eq(7)
    end
end