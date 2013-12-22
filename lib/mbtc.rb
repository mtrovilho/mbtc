require 'mbtc/version'
require 'mbtc/api'
require 'mbtc/ticker'
require 'mbtc/orderbook'
require 'mbtc/trade'

module MBTC
  class Mercado

    ##
    # Ticker
    #
    # @param type [Symbol] Tipo de request (:btc ou :ltc)
    # @return [Ticker] Retorna o ticker de preço
    #
    def ticker( type = :btc )
      ticker_json = API.ticker( type ).parsed_response
      response = JSON.parse( ticker_json )
      Ticker.new( response["ticker"] )
    end

    ##
    # Orderbook
    #
    # @param type [Symbol] Tipo de request (:btc ou :ltc)
    # @return [Orderbook] Retorna as ofertas de compra e venda
    #
    def orderbook( type = :btc )
      orderbook_json = API.orderbook( type ).parsed_response
      response = JSON.parse( orderbook_json )
      Orderbook.new( response )
    end

    ##
    # Trades
    #
    # @param type [Symbol] Tipo de request (:btc ou :ltc)
    # @return [Array] Retorna as negociações ou operações realizadas
    #
    def trades( type = :btc )
      trades_json = API.trades( type ).parsed_response
      response = JSON.parse( trades_json )
      response.collect do |trade|
        Trade.new( trade )
      end
    end

  end
end
