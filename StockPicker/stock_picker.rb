#stock_picker.rb
#Assignment #2 from Odin Project Basic Ruby/Building Blocks project
#Given an array of integers representing daily stock prices (1 per day)
#return a pair of days representing the best days to buy and sell.

def stock_picker(prices)
    result = [0,[]]
    prices[0..-2].each_with_index do |buy_price, i|
        prices[(i + 1)..-1].each_with_index do |sell_price, j| 
            diff = sell_price - buy_price
            if diff > result[0]
                result[0] = diff
                result[1] = [i,i + j + 1]
            end
        end
    end

    return result[1]
end