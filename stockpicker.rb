stocks = [17,3,6,9,15,8,6,1,10]

def stockpicker(stocks)
  best_profit = 0
  days = []
  stocks.each_with_index do |stock, index|
    for i in index..stocks.length()-1
      if (stocks[i] - stock >= best_profit)    
        best_profit =  stocks[i] - stock 
        days = [index, i]
      end
    end
  end
  days
end

p stockpicker(stocks)