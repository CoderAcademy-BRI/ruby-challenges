# This challenge has three parts. Use all you have learned to
# implement the solution. Use methods to keep your code DRY and
# clean. Use data structures that are appropriate.
# Make notes for anything you are unsure about.

# Part 1
# You are working at a cafe where you have a current backlog of orders:
# 6 lattes
# 2 scones
# and
# 3 teas

# Write a program that asks the customer for their order. The customer
# will only order one item.
#   if they order a latte, add one to the number of lattes you need to make,
#   if they order a scone, add one to the number of scones you need to serve,
#   if they order a tea, add one to the number of teas you need to make

# Print the final order so you know what to make.


# Part 2
# Lattes sell for $4, and cost $2 to make
# Scones sell for $5, and cost $3 to make
# Tea sells for $3, and cost $0.50 to make

# Print out the total profit for the orders you have.

# Part 3
# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the order
#   Print the total price

# Example:
# What would you like to order (latte, scone, tea)? Type (q)uit to quit.
# latte
# How many?
# 2
# Anything else? Type (q)uit to quit.
# tea
# How many?
# 1
# Anything else? Type (q)uit to quit.
# coffee
# I'm sorry, we don't serve that. Would you like latte, scone, or tea? Type (q)uit to quit.
# q
# Thank you! Your order:
# 2 latte
# 1 tea
# Order total: $11.00

# Part 1
def get_order # returns the item chosen and the number as an array
    order_hash = Hash.new
    options = ["l", "s", "t", "q"]
    while 1
        puts "What would you like to order (latte, scone, tea)? Type (q)uit to quit."
        puts "\n latte (l) \n scone (s) \n tea (t) \n quit (q)"
        item = gets.chomp
        return {} if item == "q"
        if options.include?(item) == true
            puts "how many would you like to order?"
            count = gets.chomp.to_i
        else
            puts "Sorry ! we do not serve that \n"
        end 
        if order_hash.keys.include?(item) == true
            order_hash[item] += count
        else
            order_hash[item] = count
        end
        puts "Would you like to order anything else? (y)es / (n)o \n"
        yes_or_no = gets.chomp
        return order_hash if yes_or_no == "n"
    end # end of while loop
    return order_hash
end # end of get_order

def create_order(order_hash)
    # Here we are just multiplying the profit for each order by the total order for each of the items.
    # sample order_hash = {"l"=>1, "s"=>2, "t"=>3}
    profit = {"l" => 2, "s" => 2, "t" => 2.5}
    temp_array = Array.new
    order_hash.values.each_index do |i|
        temp_array = order_hash.values[i] * profit.values[i]
    end
    puts temp_array
    # Next, we are updating the order_hash values with the values from the temp_array.
    # if temp_array.size == order_hash.keys.size
        order_hash.each_with_index do |(k, v), i|
        temp_array.each_with_index { |val, index| order_hash[k] = temp_array[i] if i == index }
        end
    # end
    return order_hash   
end

def main
    create_order(get_order)
end

puts main

