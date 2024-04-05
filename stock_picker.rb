def stock_picker(stock_prices)
  max_profit = 0
  buy_day = 0
  sell_day = 0

  (0..stock_prices.length - 1).each do |i|
    (0 + i..stock_prices.length - 1).each do |j|
      profit = stock_prices[j] - stock_prices[i]
      if profit > max_profit
        max_profit = profit
        buy_day = i
        sell_day = j
      end
    end
  end

  [buy_day, sell_day]
end