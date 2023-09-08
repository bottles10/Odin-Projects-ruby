def stock_picker(stock_prices)
    max_profit = 0
    buy_day = 0
    sell_day = 0
    buy_at = 0 
    sell_at = 0
  
    stock_prices.each_with_index do |buy_price, buy_index|
      (buy_index + 1...stock_prices.length).each do |sell_index|
        sell_price = stock_prices[sell_index]
        profit = sell_price - buy_price
  
        if profit > max_profit
          max_profit = profit
          buy_day = buy_index
          sell_day = sell_index
          buy_at = buy_price
          sell_at = sell_price
        end
      end
    end
  
   [ [buy_day, sell_day], {buy_at: "$#{buy_at}", sell_at: "$#{sell_at}", profit: "$#{sell_at - buy_at}" } ]
  end

  p stock_picker([17,3,6,9,15,8,6,1,10])\
  # Ouputs => [[1, 4], {:buy_at=>"$3", :sell_at=>"$15", :profit=>"$12"}]
  