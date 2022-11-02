require 'pry-byebug'

def stock_picker(prices)
    #### for future reference -- be careful how you initalize values for variables. if you initalize Lowest price at 0, it will never get updated because all the numbers given will be above zero.
    #### so contextually/arbitrarily lets make this value 100

    #lowest price to come across
    lowest_price = 100

    #store index for the day of the lowest price
    lowest_price_day = 0

    # store max possible profit
    profit = 0

    # store best days
    best_days = []

    #iterate through each price in the array
    prices.each_with_index do |curr_price, index|
        binding.pry
        if curr_price < lowest_price
            lowest_price = curr_price
            lowest_price_day = index
        end 

        if curr_price - lowest_price > profit
            profit = curr_price - lowest_price
            best_days = [lowest_price_day, index]
        end

    end 
    
    p best_days

end

stock_picker([17,3,6,9,15,8,6,1,10])
