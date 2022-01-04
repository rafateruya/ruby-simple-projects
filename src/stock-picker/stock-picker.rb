def stock_picker(prices)
  highest_profit = 0
  index_buy = 0
  index_sell = 0

  prices.each_with_index do |price_to_buy, index_to_buy|
    prices.each_with_index do |price_to_sell, index_to_sell|
      unless (index_to_buy > index_to_sell or price_to_buy > price_to_sell)
        if ((price_to_sell - price_to_buy) > highest_profit)
          highest_profit = price_to_sell - price_to_buy
          index_buy = index_to_buy
          index_sell = index_to_sell
        end
      end
    end
  end

  [index_buy, index_sell]
end

print stock_picker([17,3,6,9,15,8,6,1,10])