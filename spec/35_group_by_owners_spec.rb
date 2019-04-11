require_relative '../35_group_by_owners'

describe "should group by owners" do
    it "should return one group when one file owner" do
        expect(group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Randy', 'Output.txt' => 'Randy'})).to have_key("Randy")
        expect(group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Randy', 'Output.txt' => 'Randy'})["Randy"]).to include("Output.txt","Input.txt", "Code.py")
    end
     it "should return two groups when two file owners" do
        expect(group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'})).to have_key("Randy")
        expect(group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'})).to have_key("Stan")
        expect(group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'})["Randy"]).to include("Output.txt","Input.txt")
        expect(group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'})["Stan"]).to include("Code.py")
    end
end