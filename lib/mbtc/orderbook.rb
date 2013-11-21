module MBTC
  ##
  # Order
  #
  # price: preço unitário em Reais
  # volume: volume disponível
  #
  class Order
    attr_reader :price
    attr_reader :volume

    def initialize( price, volume )
      @price = price
      @volume = volume
    end
  end

  ##
  # Orderbook
  #
  # asks: lista das ofertas de venda disponíveis.
  # bids: lista das ofertas de compra disponíveis.
  #
  class Orderbook
    attr_reader :asks
    attr_reader :bids

    def initialize( params )
      @asks = params["asks"].collect do |ask|
        Order.new( ask[0], ask[1] )
      end

      @bids = params["bids"].collect do |bid|
        Order.new( bid[0], bid[1] )
      end
    end

  end
end
