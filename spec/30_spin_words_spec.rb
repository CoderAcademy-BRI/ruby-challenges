require_relative "../30_spin_words"

describe "should reverse words in the input string that are at least 5 characters long" do
    it "should not reverse any words if none are 5 characters or longer" do
        expect(spin_words("This is a bad test with smol wrds")).to eq("This is a bad test with smol wrds")
    end
    it "should reverse words if at least 5 characters" do
        expect(spin_words("This sentence has some words that are longer")).to eq("This ecnetnes has some sdrow that are regnol")
    end
end