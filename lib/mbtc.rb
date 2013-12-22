require 'mbtc/version'
require 'mbtc/api'
require 'mbtc/ticker'
require 'mbtc/orderbook'
require 'mbtc/trade'

module MBTC
  class Mercado

    # @param type [Symbol] Tipo de request (:btc ou :ltc)
    def initialize( type = :btc )
      @type = type
    end

    ##
    # Ticker
    #
    # @return [Ticker] Retorna o ticker de preço
    #
    def ticker
      ticker_json = API.ticker( @type ).parsed_response
      response = JSON.parse( ticker_json )
      Ticker.new( response["ticker"] )
    end

    ##
    # Orderbook
    #
    # @return [Orderbook] Retorna as ofertas de compra e venda
    #
    def orderbook
      orderbook_json = API.orderbook( @type ).parsed_response
      response = JSON.parse( orderbook_json )
      Orderbook.new( response )
    end

    ##
    # Trades
    #
    # @return [Array] Retorna as negociações ou operações realizadas
    #
    def trades
      trades_json = API.trades( @type ).parsed_response
      response = JSON.parse( trades_json )
      response.collect do |trade|
        Trade.new( trade )
      end
    end

  end
end
