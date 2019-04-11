require_relative '../34_prime_number'

describe "should return the largest prime number <= number" do
    it "should return 2 when the number is 2" do
        expect(prime_number(2)).to eq(2)
    end
    it "should return 43 when number is 45" do
        expect(prime_number(45)).to eq(43)
    end
    it "should return 199 when the number is 201" do
        expect(prime_number(201)).to eq(199)
    end
    it "should return 199 when the number is 199" do
        expect(prime_number(199)).to eq(199)
    end
end
