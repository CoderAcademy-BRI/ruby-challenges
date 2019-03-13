
# This method has some problems. See if you can work out what they
# are and get it to work.
# Start by running it, and use the error or unexpected condition
# to figure out what should change. 
# After making a change, run it again, and follow the same steps - 
# use the error or unexpected condition to figure out what should change.


# returns true if the arr contains the val
def contains?(arr,val)
    # Initialise the index
    ind=0
    # while we haven't found the value and we 
    # still have values to check
    while !found and ind < arr.length do
        if (arr[ind] == val)
            found=true
        else
            return false
        end
        # increment the index
        ind +1
    end
    #return true or false, depending on if the value was found
    return found
end

arr=[1,2,3]
#test when val is the first element
puts contains?(arr,1)
#test when val is not the first element
puts contains?(arr,2)
#test when val isn't in the arr
puts contains?(arr,0)
