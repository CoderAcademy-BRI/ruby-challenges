require_relative "../43_alphabet_position"

describe "should return an empty string when there are no alphabets" do
    it "should return an empty string for (-.-#!)" do
        expect(alphabet_position("-.-#!")).to eq("")
    end
end

describe "should return the number corresponding to the position for each of the letters in the input string" do
    it  "should return the string 20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" do
        expect(alphabet_position("The sunset sets at twelve o' clock.")). to eq("20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11")
    end
end
