require_relative '../32_interesting_number'

describe "should return false when less than 3 digits" do
    it "should return false when 1 digit" do
        expect(interesting_number(1)).to eq(false)
    end
    it "should return false when 2 digits" do
        expect(interesting_number(12)).to eq(false)
    end
end
describe "should return false when not ascending or descending" do
    it "should return false when 879" do
        expect(interesting_number(879)).to eq(false)
    end
end
describe "should return true when 3+ digits ascending" do
    it "should return true when 3 digits ascending" do
        expect(interesting_number(123)).to eq(true)
    end
    it "should return true when 4 digits ascending" do
        expect(interesting_number(1234)).to eq(true)
    end
    it "should return true when ends with 890" do
        expect(interesting_number(890)).to eq(true)
    end
end
describe "should return true when 3+ digits descending" do
    it "should return true when 3 digits descending" do
        expect(interesting_number(321)).to eq(true)
    end
    it "should return true when 4 digits descending" do
        expect(interesting_number(4321)).to eq(true)
    end
    it "should return true when ends with 210" do
        expect(interesting_number(210)).to eq(true)
    end
end