class Stock < ApplicationRecord

  def self.new_from_lookup(tinker_symbol)
    begin
      StockQuote::Stock.new(api_key: 'sk_01939fc7ea04450691d3edd89beb7251')
      looked_up_stock =  StockQuote::Stock.quote(tinker_symbol)
      new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price)
    rescue
      return nil
    end
  end




end
