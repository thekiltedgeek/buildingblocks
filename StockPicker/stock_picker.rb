#stock_picker.rb
#Assignment #2 from Odin Project Basic Ruby/Building Blocks project
#Given an array of integers representing daily stock prices (1 per day)
#return a pair of days representing the best days to buy and sell.

def stock_picker(prices)
    result = [0,[]]
    for i in 0..prices.length - 2 do
        for j in i + 1..prices.length - 1 do
            diff = prices[j] - prices[i]
            if diff > result[0]
                result[0] = diff
                result[1] = [i,j]
            end
        end
    end
    
    #return result[0] > 0 ? result[1] : "None"
    return result[1]
end