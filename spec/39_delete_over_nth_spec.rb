require_relative '../39_delete_over_nth'

describe "should not delete anything if not required" do
    it "should not delete when n is more than any occurrance" do
        expect(delete_over_nth([1,2,3],1)).to eq([1,2,3])
        expect(delete_over_nth([1,1,2,2,3,3],2)).to eq([1,1,2,2,3,3])
    end
end
describe "should delete over nth occurrance" do
    it "should delete only occurrances over nth" do
        expect(delete_over_nth([1,1,1,2,2],2)).to eq([1,1,2,2])
        expect(delete_over_nth([23,30,15,23,16],1)).to eq([23,30,15,16])
    end
end