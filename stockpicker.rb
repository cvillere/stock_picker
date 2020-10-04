stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker prices
  price_hash = Hash.new

  prices.each do |price|
    price_index = 0
    difference_pair_array = []
    final_difference = 0

    while price_index < prices.length
      difference = price - prices[price_index]

      if difference < final_difference && (prices.index(price) < prices.index(prices[price_index]))
        final_difference = difference
        difference_pair_array.clear
        difference_pair_array.push(prices.index(price))
        difference_pair_array.push(prices.index(prices[price_index]))
      end
      price_index += 1  
    end
    price_hash[final_difference] = difference_pair_array
  end
  
  final_key = price_hash.keys.min
  price_hash[final_key]   

end

p stock_picker(stock_prices)
