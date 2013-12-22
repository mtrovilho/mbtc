module MBTC
  ##
  # Ticker
  #
  # high: maior valor em Reais de negociação do dia.
  # low: menor valor em Reais de negociação do dia.
  # vol: volume de Bitcoin ou Litecoin negociado no dia.
  # last: último valor em Reais negociado.
  # buy: valor atual em Reais ofertado para compra.
  # sell: valor atual em Reais ofertado para venda.
  # date: timestamp da última atualização do ticker.
  #
  class Ticker
    attr_reader :high
    attr_reader :low
    attr_reader :vol
    attr_reader :last
    attr_reader :buy
    attr_reader :sell
    attr_reader :date

    def initialize( params = {} )
      params.each do |k,v|
        self.instance_variable_set( "@#{k}", v )
      end
    end

  end
end
