require_relative "../31_missing_letter"

describe "should return the missing letter" do
    it "should return the missing letter when letters are lower case" do
        expect(missing_letter(['a','b','c','d','f'])).to eq('e')
    end
    it "should return the missing letter when letters are upper case" do
        expect(missing_letter(['O','Q','R','S'])).to eq('P')
    end
end