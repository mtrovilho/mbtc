require 'httparty'

module MBTC
  class API
    include HTTParty
    base_uri 'https://www.mercadobitcoin.com.br/api'

    ##
    # Ticker
    #
    # @param [Symbol] Tipo de request (:btc ou :ltc)
    # @return [HTTParty::Response] Retorna o ticker de preço
    #
    def self.ticker( type = :btc )
      case type
      when :btc
        endpoint = '/ticker/'
      when :ltc
        endpoint = '/ticker_litecoin/'
      end

      get( endpoint )
    end

    ##
    # Orderbook
    #
    # @param [Symbol] Tipo de request (:btc ou :ltc)
    # @return [HTTParty::Response] Retorna as ofertas de compra e venda
    #
    def self.orderbook( type = :btc )
      case type
      when :btc
        endpoint = '/orderbook/'
      when :ltc
        endpoint = '/orderbook_litecoin/'
      end

      get( endpoint )
    end

    ##
    # Trades
    #
    # @param [Symbol] Tipo de request (:btc ou :ltc)
    # @return [HTTParty::Response] Retorna as negociações ou operações realizadas
    #
    def self.trades( type = :btc )
      case type
      when :btc
        endpoint = '/trades/'
      when :ltc
        endpoint = '/trades_litecoin/'
      end

      get( endpoint )
    end

  end
end