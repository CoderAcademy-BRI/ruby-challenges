
require_relative '../38_maze'

describe Maze do
    before(:each) do
        # We enter the maze at 2 and exit at 3
        @maze = Maze.new([
            [1,1,1,1,1,1,1],
            [1,0,0,0,0,0,3],
            [1,0,1,0,1,0,1],
            [0,0,1,0,0,0,1],
            [1,0,1,0,1,0,1],
            [1,0,0,0,0,0,1],
            [1,2,1,0,1,0,1]
        ])    
    end
    # If we reach number 3, we've finished the maze
    it "should finish 1" do
        expect(@maze.walk(["N","N","N","N","N","E","E","E","E","E"])).to eq("Finish")
    end
    it "should finish 2" do
        expect(@maze.walk(["N","N","N","N","N","E","E","S","S","E","E","N","N","E"])).to eq("Finish")
    end
    
    it "should ignore extra moves (not Dead)" do    
        # Will return "Dead" if it doesn't ignore the 11th move, as we'll fall off the edge
        expect(@maze.walk(["N","N","N","N","N","E","E","E","E","E","E"])).to eq("Finish")
    end

    it "should ignore extra moves (not Lost)" do    
        # Will return "Lost" if it doesn't ignore the last two moves
        expect(@maze.walk(["N","N","N","N","N","E","E","E","E","E","W","W"])).to eq("Finish")
    end

    it "should be possible to finish without doing it all in a single walk" do
        expect(@maze.walk(["N","N","N","N","N"])).to eq("Lost")
        expect(@maze.walk(["E","E","E","E","E"])).to eq("Finish")
    end
    
    it "should return Dead if we go off the edge" do
        expect(@maze.walk(["N","N","N","W","W"])).to eq("Dead")
    end

    it "should ignore moves after death" do
        expect(@maze.walk(["N","N","N","W","W","E","E","N"])).to eq("Dead")
    end
    
    it "should return Lost if we don't finish or die" do
        expect(@maze.walk(["N","E","E","E","E"])).to eq("Lost")
    end
    
    it "should die if we touch the wall" do
        expect(@maze.walk(["N","W","W","E","E"])).to eq("Dead")
    end
end