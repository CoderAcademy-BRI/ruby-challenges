require_relative "../29_shortest_walk"

describe "should return the shortest walk" do
    it "should eliminate reverse directions in the original array" do
        expect(shortest_walk(["NORTH","SOUTH","EAST"])).to eq(["EAST"])
    end
    it "should return an empty array if all directions contradict" do
        expect(shortest_walk(["NORTH","SOUTH"])).to eq([])
    end
    it "should eliminate reverse directions when more than one pass is required" do
        expect(shortest_walk(["NORTH","SOUTH","SOUTH","EAST","WEST","NORTH","WEST"])).to eq(["WEST"])
    end
end