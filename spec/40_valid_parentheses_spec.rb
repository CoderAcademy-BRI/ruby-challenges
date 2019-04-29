require_relative '../40_valid_parentheses'

describe "should return true with no parentheses" do
    it "should return true for empty string" do
        expect(valid_parentheses?("")).to eq(true)
    end
    it "should return true for string with no parens" do
        expect(valid_parentheses?("abc")).to eq(true)
    end
end

describe "should return true with valid parens" do
    it "should return true for single set of parens" do
        expect(valid_parentheses?("()")).to eq(true)
    end
    it "should return true for single set of parens with text" do
        expect(valid_parentheses?("(abc)")).to eq(true)
    end
    it "should return true for nested parens" do
        expect(valid_parentheses?("(())")).to eq(true)
    end
    it "should return true for adjacent parens" do
        expect(valid_parentheses?("()()")).to eq(true)
    end
    it "should return true for adjacent and nested parens" do
        expect(valid_parentheses?("(()())")).to eq(true)
    end
end

describe "should return false when invalid parens" do
    it "should return false when single parenthesis" do
        expect(valid_parentheses?("(")).to eq(false)
    end
    it "should return false when missing parens" do
        expect(valid_parentheses?("(()(")).to eq(false)
    end    
end