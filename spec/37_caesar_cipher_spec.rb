require_relative '../37_caesar_cipher'

describe "should require a parameter to instantiate" do
    it "should create a cipher initialized with 5" do
        expect{CaesarCipher.new()}.to raise_error(ArgumentError)
    end
end
describe "should encode correctly" do

    it "should return 'BQQMF' for input 'apple' with shift=1" do
        expect(CaesarCipher.new(1).encode('apple')).to eq("BQQMF")
    end
    it "should return 'DSSOH' for input 'apple' with shift=3" do
        expect(CaesarCipher.new(3).encode('apple')).to eq("DSSOH")
    end
    it "should return 'APP' for input 'ZOO' with shift=1" do
        expect(CaesarCipher.new(1).encode('zoo')).to eq("APP")
    end
end
describe "should decode correctly" do
    it "should return 'APPLE' for 'bqqmf' with shift=1" do
        expect(CaesarCipher.new(1).decode('bqqmf')).to eq("APPLE")
    end
    it "should return 'APPLE' for 'dssoh' with shift=3" do
        expect(CaesarCipher.new(3).decode('dssoh')).to eq("APPLE")
    end
    it "should return 'ZOO' for 'app' with shift=1" do
        expect(CaesarCipher.new(1).decode('app')).to eq("ZOO")
    end
end